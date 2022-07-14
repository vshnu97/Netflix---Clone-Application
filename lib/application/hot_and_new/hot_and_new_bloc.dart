import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/new_hot/hot_and_new_service.dart';

import '../../domain/new_hot/models/hot_and_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    //get hot and new movie data

    on<LoadDDataInComingSoon>((event, emit) async {
      //send loading
      emit(HotAndNewState(
          comingSoonList: [],
          everyOneIsWatchingList: [],
          isLoading: true,
          hasError: false));

      final result = await _hotAndNewService.getHotAndNewMovieData();

      final newState = result.fold((MainFailure failure) {
        return HotAndNewState(
          comingSoonList: [],
          everyOneIsWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        return HotAndNewState(
          comingSoonList: resp.results,
          everyOneIsWatchingList: state.everyOneIsWatchingList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(newState);
    });

    //get hot and new tv data
    on<LoadDatainEveryoneWatching>((event, emit) {});
  }
}

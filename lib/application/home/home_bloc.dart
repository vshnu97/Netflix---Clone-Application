
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/new_hot/hot_and_new_service.dart';
import 'package:netflix/domain/new_hot/models/hot_and_new_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    //send loading to UI

    emit(state.copyWith(isLoading: true, hasError: false));

    // on event getHomeScreenData
    on<GetHomeScreenData>((event, emit) async {
      final movieResult = await _homeService.getHotAndNewMovieData();
      final tvResult = await _homeService.getHotAndNewMovieData();

      //trasform data
      final state1 = movieResult.fold((MainFailure failure) {
        return HomeState(
          stateid: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieData: [],
          trendingMovieData: [],
          tenseDramaMovieData: [],
          southIndianMovieData: [],
          trendingTvShowList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        final pastYear = resp.results;
        final trending = resp.results;
        final dramas = resp.results;
        final southIndian = resp.results;
        pastYear.shuffle();
        trending.shuffle();
        dramas.shuffle();
        southIndian.shuffle();
       
        return HomeState(
            stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieData: pastYear,
            trendingMovieData: trending,
            tenseDramaMovieData: dramas,
            southIndianMovieData: southIndian,
            trendingTvShowList: state.trendingTvShowList,
            isLoading: false,
            hasError: false);
      });
      emit(state1);

      final state2 = tvResult.fold((MainFailure failure) {
        return HomeState(
            stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieData: [],
            trendingMovieData: [],
            tenseDramaMovieData: [],
            southIndianMovieData: [],
            trendingTvShowList: [],
            isLoading: false,
            hasError: true);
      }, (HotAndNewResp resp) {
        final top10List = resp.results;
        return HomeState(
            stateid: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieData: state.pastYearMovieData,
            trendingMovieData: top10List,
            tenseDramaMovieData: state.tenseDramaMovieData,
            southIndianMovieData: state.southIndianMovieData,
            trendingTvShowList: top10List,
            isLoading: false,
            hasError: false);
      });

      //send UI
      emit(state2);
    });
  }
}

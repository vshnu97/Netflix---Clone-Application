import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/download.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  'https://assets.mixkit.co/videos/preview/mixkit-motorcyclist-speeding-through-a-desert-39934-large.mp4',
  'https://assets.mixkit.co/videos/preview/mixkit-family-walking-together-in-nature-39767-large.mp4',
  'https://assets.mixkit.co/videos/preview/mixkit-waves-in-the-water-1164-large.mp4',
  'https://assets.mixkit.co/videos/preview/mixkit-beer-foam-spilling-into-a-glass-on-white-background-5066-large.mp4',
  'https://assets.mixkit.co/videos/preview/mixkit-portrait-of-a-young-boxer-training-on-a-ring-40971-large.mp4',
  'https://assets.mixkit.co/videos/preview/mixkit-tree-branches-in-the-breeze-1188-large.mp4',
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadRepo _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //sending loading to ui
      emit(const FastLaughState(
          videosList: [], isLoading: true, isError: false));

      //get trendiing movies
      final result = await _downloadService.getDownloadsImage();

      final _state = result.fold(
        (l) {
          return const FastLaughState(
              videosList: [], isLoading: false, isError: true);
        },
        (resp) =>
            FastLaughState(videosList: resp, isLoading: false, isError: false),
      );

      //send to ui
      emit(_state);
    });
  }
}

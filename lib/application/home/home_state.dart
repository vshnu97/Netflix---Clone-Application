part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateid,
    required List<HotAndNewData> pastYearMovieData,
    required List<HotAndNewData> trendingMovieData,
    required List<HotAndNewData> tenseDramaMovieData,
    required List<HotAndNewData> southIndianMovieData,
    required List<HotAndNewData> trendingTvShowList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      stateid: '0',
      pastYearMovieData: [],
      trendingMovieData: [],
      tenseDramaMovieData: [],
      southIndianMovieData: [],
      trendingTvShowList: [],
      hasError: false,
      isLoading: false);
}

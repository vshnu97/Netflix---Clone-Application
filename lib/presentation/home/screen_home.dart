import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/background_card.dart';
import 'package:netflix/presentation/home/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_titlecard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent,
         systemNavigationBarColor: Colors.black ),
         );
         

    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: ((notification) {
                final direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              }),
              child: Stack(
                children: [
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        );
                      } else if (state.hasError) {
                        return const Center(
                            child: Text(
                          'has Error',
                          style: TextStyle(color: Colors.white),
                        ));
                      }
                      //release past year
                      final realeasePosterImg =
                          state.pastYearMovieData.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList();

                      //trending
                      final trendingImg = state.trendingMovieData.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList();

                      //drama
                      final dramaImg = state.tenseDramaMovieData.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList();
                      //south
                      final southImg = state.southIndianMovieData.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList();
                      southImg.shuffle();
                      //to10
                      final topimg = state.trendingTvShowList.map((e) {
                        return '$imageAppendUrl${e.posterPath}';
                      }).toList();
                      return ListView(
                        children: [
                          const BackgroundCard(),
                          kheight,
                          MainTitleCard(
                            title: "Release in the past year",
                            posterList: realeasePosterImg,
                          ),
                          kheight,
                          MainTitleCard(
                            title: 'Trending now',
                            posterList: trendingImg,
                          ),
                          NumberTitleCard(
                            posterImg: topimg,
                          ),
                          kheight,
                          MainTitleCard(
                            title: 'Tense Dramas',
                            posterList: dramaImg,
                          ),
                          kheight,
                          MainTitleCard(
                            title: 'South Indian Cinema',
                            posterList: southImg,
                          ),
                        ],
                      );
                    },
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 2200),
                          width: double.infinity,
                          height:110,
                          color: Colors.black.withOpacity(.3),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://icones.pro/wp-content/uploads/2021/04/icone-netflix-symbole-logo-original.png',
                                           width: 40,
                                           height: 40,
                                    //   width: 40,
                                    //   height: 40,
                                       placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                     errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                    // Image.network(
                                    //   'https://icones.pro/wp-content/uploads/2021/04/icone-netflix-symbole-logo-original.png',
                                    //   width: 40,
                                    //   height: 40,
                                    // ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kWidth,
                                 CachedNetworkImage(
                                      imageUrl:
                                          'https://i.pinimg.com/564x/61/54/76/61547625e01d8daf941aae3ffb37f653.jpg',
                                           width: 30,
                                           height: 30,
                                    //   width: 40,
                                    //   height: 40,
                                       placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                     errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  kWidth,
                                ],
                              ),
                              kheight,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'TV Shows',
                                    style: kHomeTitleText,
                                  ),
                                  Text(
                                    'Movies',
                                    style: kHomeTitleText,
                                  ),
                                  Text(
                                    'Categories',
                                    style: kHomeTitleText,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : kheight,
                ],
              ),
            );
          }),
    );
  }
}

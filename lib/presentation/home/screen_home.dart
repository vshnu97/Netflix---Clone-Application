import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/background_card.dart';
import 'package:netflix/presentation/home/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_titlecard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
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
                      ListView(
                        children: const [
                          BackgroundCard(),
                          kheight,
                          MainTitleCard(
                            title: "Release in the past year",
                          ),
                          kheight,
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          NumberTitleCard(),
                          kheight,
                          MainTitleCard(
                            title: 'Tense Dramas',
                          ),
                          kheight,
                          MainTitleCard(
                            title: 'South Indian Cinema',
                          ),
                        ],
                      ),
                      scrollNotifier.value == true
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 2200),
                              width: double.infinity,
                              height: 90,
                              color: Colors.black.withOpacity(.3),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Image.network(
                                          'https://icones.pro/wp-content/uploads/2021/04/icone-netflix-symbole-logo-original.png',
                                          width: 40,
                                          height: 40,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      kWidth,
                                      Container(
                                        width: 30,
                                        height: 30,
                                        color: Colors.green,
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
              })),
    );
  }
}

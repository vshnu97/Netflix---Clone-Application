import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_&_hot/screen_new_hot.dart';
import 'package:netflix/presentation/search/sccreen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({Key? key}) : super(key: key);

  final _pages = [
    const ScreenHome(),
    const ScreenFastLaugh(),
    const ScreenNewAndHot(),
    const ScreenSearch(),
     ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexValueChanger,
          builder: (BuildContext context, int value, _) {
            return _pages[value];
          }),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}

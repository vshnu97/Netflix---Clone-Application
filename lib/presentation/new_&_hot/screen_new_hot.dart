import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/new_&_hot/widget/coming_up_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            actions: [
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
               
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              kWidth,
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                unselectedLabelColor: kWhiteColor,
                labelStyle: const TextStyle(
                    letterSpacing: .8, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(borderRadius: kRadius30, color: kWhiteColor),
                tabs: const [
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text('🍿 Coming soon'),
                    ),
                  ),
                  SizedBox(
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text("👀 Everyone's watching "),
                      ))
                ]),
          ),
        ),
        body: TabBarView(children: [
          const ComingSoonList(key: Key('comming soon')),
          _buildEveryonesWatching(),
        ]),
      ),
    );
  }

  _buildEveryonesWatching() {
    return Row(
      children: [
        Container(),
      ],
    );
  }

  // _buildComingSoon() {
  //   return ListView.builder(
  //       itemCount: 10,
  //       itemBuilder: (BuildContext context, index) => const ComingUpWidget());
  // }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDDataInComingSoon());
    });

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        );
      } else if (state.hasError) {
        return const Center(
          child: Text('Error while coming soon  list  '),
        );
      } else if (state.comingSoonList.isEmpty) {
        return const Center(
          child: Text('Coming soon List is empty '),
        );
      } else {
        return ListView.builder(
            itemCount: state.comingSoonList.length,
            itemBuilder: (BuildContext context, index) {
              final movie = state.comingSoonList[index];

              if (movie.id == null) {
                return const SizedBox();
              } else {
                String month = '';
                String day = '';
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  final formattedDAte =
                      DateFormat.yMMMMd('en_US').format(_date!);
                  month = formattedDAte
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase();
                  day = movie.releaseDate!.split('-')[1];
                  print(day);
                  print(month);
                } catch (_) {
                  month = '';
                }

                return ComingUpWidget(
                    id: movie.id.toString(),
                    month: month,
                    day: day,
                    posterPath: '$imageAppendUrl${movie.backdropPath}',
                    movieName: movie.orginalTitle ?? 'No title',
                    description: movie.overview ?? 'No description');
              }
            });
      }
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const SearchTextTitle(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while gatting data'),
                );
              } else if (state.idleLIst.isEmpty) {
                return const Center(
                  child: Text('List is empty  '),
                );
              } else {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      final movie = state.idleLIst[index];
                     return TopSearchItemTile(title: movie.title ??'No title', imageUrl: '$imageAppendUrl${movie.posterPath}');
                    }),
                    separatorBuilder: (ctx, index) => kheight,
                    itemCount: state.idleLIst.length);
              }
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile(
      {Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: screenWidth * .34,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            )),
        kWidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 18,
            child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
              size: 17,
            ),
          ),
        )
      ],
    );
  }
}

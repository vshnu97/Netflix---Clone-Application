import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 2,
              children: List.generate(20, (index) {
                final movie = state.searchResultList[index];

                return MainCard(
                  imageUrll: '${movie.posterPath}',
                );
              }),
            );
          },
        )),
        kheight,
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrll;
  const MainCard({Key? key, required this.imageUrll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: NetworkImage('$imageAppendUrl$imageUrll'),
            fit: BoxFit.cover),
        color: kBlackColor,
      ),
    );
  }
}

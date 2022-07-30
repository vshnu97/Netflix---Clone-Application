import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key, required this.posterImg,
  }) : super(key: key);
  final List<String> posterImg;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MainTitleWidget(
            mainTitle: 'Top 10 Tv shows in India today',
          ),
        ),
        kheight,
        LimitedBox(
            maxHeight: 190,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => NumberCard(
                      index: index, numberCardImg: posterImg[index],
                    )))
      ],
    );
  }
}

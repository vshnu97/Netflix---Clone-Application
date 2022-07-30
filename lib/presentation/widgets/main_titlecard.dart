import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title, required this.posterList})
      : super(key: key);
  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MainTitleWidget(
            mainTitle: title,
          ),
        ),
        kheight,
        LimitedBox(
            maxHeight: 190,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: posterList.length,
                itemBuilder: (context, index) {
                  return MainCardWidget(
                    imagUrl: posterList[index],
                  );
                }))
      ],
    );
  }
}

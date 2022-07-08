import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 125,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius5,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media-cache.cinematerial.com/p/500x/9xh2qm7x/moonfall-romanian-movie-poster.jpg"))),
            ),
          ],
        ),
        Positioned(
            left: 20,
            bottom: 7,
            child: BorderedText(
              strokeColor: kWhiteColor,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: kBlackColor,
                    fontSize: 100,
                    fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}

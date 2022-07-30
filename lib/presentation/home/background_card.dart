import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/custom_iconbutton.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 590,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://xl.movieposterdb.com/09_12/2009/499549/xl_499549_e4472633.jpg'))),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButtonIcon(
                icon: Icons.add,
                label: 'My List',
              ),
              _PlayButton(),
              CustomButtonIcon(
                icon: Icons.info_outline,
                label: 'Info',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 38,
        color: kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                size: 25,
                color: kBlackColor,
              ),
              label: const Text(
                'Play',
                style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: .8),
              )),
        ));
  }
}

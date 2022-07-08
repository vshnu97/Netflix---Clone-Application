import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetsList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads',
              )),
          body: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: ((context, index) => _widgetsList[index]),
              separatorBuilder: ((context, index) => const SizedBox(
                    height: 20,
                  )),
              itemCount: _widgetsList.length)),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  final List imageList = [
    "https://images.news18.com/ibnlive/uploads/2019/10/Movies-First-Look-Sanjay-Dutt-as-Ahmad-Shah-Abdali-in-Panipat.jpg?impolicy=website&width=0&height=0",
    "https://4.bp.blogspot.com/-dqkWYLpZ-Rg/XEGiQ8sFVXI/AAAAAAAAXO4/eSW56lyAYOMYMm2yacOT1qvx_raMD7w4wCLcBGAs/s1600/indian-2-upcoming-movie-poster-star-cast-release-date-mt-wiki.jpg",
    "https://upload.wikimedia.org/wikipedia/en/9/99/Dangal_Poster.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        kheight,
        const Text(
            'We will download a personalised selection and \n shows for you , so there is always\n something to watch on your\n device',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .31,
                backgroundColor: Colors.grey.withOpacity(.45),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 140, top: 20),
                angle: -22,
                size: Size(size.width * .29, size.width * .4),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 140, top: 20),
                angle: 22,
                size: Size(size.width * .29, size.width * .4),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                size: Size(size.width * .33, size.width * .47),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            color: kButtonColorBlue,
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          color: kButtonColorWhite,
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text('Smart downloads',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(imageList), fit: BoxFit.cover),
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}

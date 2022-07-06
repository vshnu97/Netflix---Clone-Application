import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView(
          children: [
            const _SmartDownloads(),
           
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
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
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
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
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
   Section2({ Key? key }) : super(key: key);

  
  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/74kkM7E5IymHl7ZS4XugP6YT3zU.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dXCjoI3jdtBrwPHgVsyNLkl8Rvs.jpg"
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
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
                    margin: const EdgeInsets.only(right: 140, bottom: 30),
                    angle: -20,
                    size: Size(size.width * .29, size.width * .4),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: const EdgeInsets.only(left: 140, bottom: 30),
                    angle: 20,
                    size: Size(size.width * .29, size.width * .4),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[2],
                    margin: const EdgeInsets.only(bottom: 5),
                    size: Size(size.width * .32, size.width * .45),
                  )
                ],
              ),
            ),


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
        Text('Smart downloads')
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
    // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageList), fit: BoxFit.cover),
          color: kBlackColor,
        ),
      ),
    );
  }
}

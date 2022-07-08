import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl =
    "https://dx35vtwkllhj9.cloudfront.net/universalstudios/ambulance/images/regions/us/share.png";

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
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchItemTile()),
              separatorBuilder: (ctx, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

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
              image: const DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            )),
        kWidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
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

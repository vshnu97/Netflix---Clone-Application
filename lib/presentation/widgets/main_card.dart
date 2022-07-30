import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class MainCardWidget extends StatelessWidget {
  String imagUrl;
   MainCardWidget({
    Key? key,required this.imagUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 125,
        height: 200,
        decoration: BoxDecoration(
            // color: Colors.deepOrange,
            borderRadius: kRadius5,
            image:  DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    imagUrl))),
      ),
    );
  }
}

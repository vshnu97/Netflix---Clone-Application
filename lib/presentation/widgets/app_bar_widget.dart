import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,required this.title}) : super(key: key);
 final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
         Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,letterSpacing: .8),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.green,
        ),
        kWidth,
      ],
    );
  }
}

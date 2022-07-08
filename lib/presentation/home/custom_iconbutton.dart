import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({
    Key? key,
    required this.icon,
    required this.label,
    this.iconSize = 25,
    this.textSize = 16, this.textColor=Colors.white,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final double iconSize;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: .8,
              fontSize: textSize,color: textColor),
        )
      ],
    );
  }
}

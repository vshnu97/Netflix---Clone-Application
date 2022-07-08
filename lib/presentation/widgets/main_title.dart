import 'package:flutter/material.dart';

class MainTitleWidget extends StatelessWidget {
  final String mainTitle;
  const MainTitleWidget({ Key? key, required this.mainTitle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
       mainTitle,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold,letterSpacing: .8),
      );
  }
}
import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 125,
        height: 200,
        decoration:  BoxDecoration(
         // color: Colors.deepOrange,
          borderRadius: kRadius5,
            image: const DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "https://m.media-amazon.com/images/M/MV5BMTkzNjQyMzIzOF5BMl5BanBnXkFtZTcwMjI0MDk3OA@@._V1_.jpg"))
                    ),
      ),
    );
  }
}
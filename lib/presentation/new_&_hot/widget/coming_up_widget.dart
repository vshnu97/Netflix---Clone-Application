import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_iconbutton.dart';

class ComingUpWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const ComingUpWidget(
      {Key? key,
     required this.id,
     required this.month,
     required this.day,
     required this.posterPath,
    required  this.movieName,
     required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 55,
          height: 480,
          child: Column(
            children:  [
              Text(
               month,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kGreyColor),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 27,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 55,
          height: 480,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 190,
                    child: Image.network(
                      posterPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(.6),
                        radius: 22,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_off,
                              size: 20,
                              color: kWhiteColor,
                            ))),
                  ),
                ],
              ),
              kheight20,
              Row(
                children: [
                  Text(
                    movieName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: GoogleFonts.indieFlower().fontFamily,
                        letterSpacing: -2,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: const [
                          CustomButtonIcon(
                            icon: Icons.notifications_outlined,
                            label: 'Remind me',
                            iconSize: 20,
                            textSize: 10,
                            textColor: Colors.grey,
                          ),
                          kWidth20,
                          CustomButtonIcon(
                            icon: Icons.info_outline,
                            label: 'Info',
                            iconSize: 20,
                            textSize: 10,
                            textColor: Colors.grey,
                          ),
                          kWidth20
                        ],
                      ),
                      kheight20
                    ],
                  ),
                ],
              ),
              kheight,
               Text('Coming on $day $month',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              kheight20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://pngimg.com/uploads/netflix/netflix_PNG15.png',
                        height: 18,
                      ),
                      kWidth,
                      const Text(
                        'FILM',
                        style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 5,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  kheight5,
                   Text(
                    movieName,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  kheight15,
                   Text(
                    
                   description,
                   overflow: TextOverflow.ellipsis,
                   maxLines: 4,
                    style: const TextStyle(color: kGreyColor),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

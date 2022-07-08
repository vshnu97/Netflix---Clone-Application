import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_iconbutton.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            actions: [
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
            bottom: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                unselectedLabelColor: kWhiteColor,
                labelStyle: const TextStyle(
                    letterSpacing: .8, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(borderRadius: kRadius30, color: kWhiteColor),
                tabs: const [
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text('🍿 Coming soon'),
                    ),
                  ),
                  SizedBox(
                      height: 40,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text("👀 Everyone's watching "),
                      ))
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryonesWatching(),
        ]),
      ),
    );
  }

  _buildEveryonesWatching() {
    return Row(
      children: [
        Container(),
      ],
    );
  }

  _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingUpWidget());
      
      
  }
}

class ComingUpWidget extends StatelessWidget {
  const ComingUpWidget({
    Key? key,
  }) : super(key: key);

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
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kGreyColor),
              ),
              Text(
                '16',
                style: TextStyle(
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
                      'https://wallpaperaccess.com/full/2915038.jpg',
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
                    'Money Heist',
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
              const Text('Coming on Friday',
                  style: TextStyle(fontWeight: FontWeight.w600)),
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
                  const Text(
                    'Money Heist',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  kheight15,
                  const Text(
                    'To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose.',
                    style: TextStyle(color: kGreyColor),
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

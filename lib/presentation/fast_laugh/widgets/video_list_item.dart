import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.6),
                    radius: 28,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 30,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://m.media-amazon.com/images/M/MV5BNjRiYTIzZmUtMTFkNS00ZTM0LWE4ODAtMDliMGE4NzM5ZjVlXkEyXkFqcGdeQXVyNDQ0MTYzMDA@._V1_FMjpg_UX1000_.jpg'),
                        radius: 28,
                      ),
                    ),
                    ListPageActions(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    ListPageActions(icon: Icons.add, title: 'My List'),
                    ListPageActions(
                        icon: Icons.share_outlined, title: ' Share'),
                    ListPageActions(icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ListPageActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const ListPageActions({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, letterSpacing: 1.2,fontSize: 13),
          ),
        ],
      ),
    );
  }
}

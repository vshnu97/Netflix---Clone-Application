import 'package:flutter/material.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/domain/downloads/models/download.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieDAta;

  const VideoListItemInheritedWidget(
      {Key? key, required this.widget, required this.movieDAta})
      : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieDAta != movieDAta;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieDAta.posterPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        FastlaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage('$imageAppendUrl$posterPath'),
                        radius: 28,
                      ),
                    ),
                    const ListPageActions(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    const ListPageActions(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                      onTap:(){
                       Share.share('https://github.com/vshnu97', subject: 'Look !');
                      },
                      child: const ListPageActions(
                          icon: Icons.share_outlined, title: ' Share'),
                    ),
                    const ListPageActions(icon: Icons.play_arrow, title: 'Play')
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
                fontWeight: FontWeight.w600, letterSpacing: 1.2, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class FastlaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastlaughVideoPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastlaughVideoPlayer> createState() => _FastlaughVideoPlayerState();
}

class _FastlaughVideoPlayerState extends State<FastlaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? VideoPlayer(_videoPlayerController)
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}

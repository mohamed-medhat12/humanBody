import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({Key? key, required this.youtubeUrl})
      : super(key: key);
  final String youtubeUrl;

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  double screenWidth = 0;
  double screenHeight = 0;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeUrl!)!,
        params: const YoutubePlayerParams(
          loop: true,
          color: 'transparent',
          desktopMode: true,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
          autoPlay: false,
        ));
    super.initState();
  }
  
@override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    final screenSize = MediaQuery.of(context).size;
    return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
              vertical: 20,
            ),
            child: Container(
              height: 300,
              width: 100,
              child: YoutubePlayerControllerProvider(
                  controller: _controller,
                  child: YoutubePlayerIFrame(
                    controller: _controller,
                  )),
            ),
    );
  }
}

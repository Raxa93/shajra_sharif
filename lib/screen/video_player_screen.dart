
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../configurations/size_config.dart';
import '../styles/app_styles.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {

    final VideoPlayerController _videoPlayerController = VideoPlayerController.asset('assets/shajraSahirf.mp4');
   late ChewieController _chewieController ;

   @override
  void initState() {
    super.initState();
    // _videoPlayerController =
    _videoPlayerController.initialize();
    _chewieController = ChewieController(
      autoInitialize: true,
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16/9
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                // audioPlayer.pause();
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/home_screen_bg.png",
              ),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight! * 0.7,
                decoration: AppStyles.shadowBigContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [


                    AspectRatio(
                        aspectRatio: 16/9,
                        child: Chewie(controller: _chewieController))
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(20),
                    //   child: Image.asset(
                    //     'assets/gomaal_shareef.jpg',
                    //     width: SizeConfig.screenWidth! * 0.8,
                    //     height: SizeConfig.screenHeight! * 0.3,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

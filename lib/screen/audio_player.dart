import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configurations/size_config.dart';
import '../styles/app_styles.dart';
import 'audio_player_play.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({Key? key}) : super(key: key);

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>  AudioPlayerPlayScreen(
                                audioName: 'Audio One',
                                url: 'audioone.mp3',
                              )));
                    },
                    child: Container(
                       width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight! * 0.1,
                      decoration: AppStyles.shadowBigContainer,
                      child: const Center(
                        child: Text(
                          'Audio One',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                    thickness: 2,
                    color: Colors.white,
                    endIndent: SizeConfig.screenWidth! * 0.04,
                    indent: SizeConfig.screenWidth! * 0.04),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>  AudioPlayerPlayScreen(
                                audioName: 'Audio Two',
                                url: 'audio_2.mp3',
                              )));
                    },
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight! * 0.1,
                      decoration: AppStyles.shadowBigContainer,
                      child: const Center(
                        child: Text(
                          'Audio Two',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

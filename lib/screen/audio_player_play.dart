// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configurations/size_config.dart';
import '../styles/app_styles.dart';

class AudioPlayerPlayScreen extends StatefulWidget {
  String audioName;
  String url;

  AudioPlayerPlayScreen({Key? key, required this.audioName, required this.url})
      : super(key: key);

  @override
  State<AudioPlayerPlayScreen> createState() => _AudioPlayerPlayScreenState();
}

class _AudioPlayerPlayScreenState extends State<AudioPlayerPlayScreen> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  Duration difference = Duration.zero;

  @override
  void initState() {
    setAudio();
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {

      setState(() {
        duration = newDuration;
      });
      difference = duration - position;
    });

    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
        difference = duration - position;
      });
    });
  }


  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async {
        await audioPlayer.pause();
        return onBackPress(context);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  audioPlayer.pause();
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
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
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/gomaal_shareef.jpg',
                          width: SizeConfig.screenWidth! * 0.8,
                          height: SizeConfig.screenHeight! * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        widget.audioName,
                        style: TextStyle(fontSize: 20),
                      ),
                      Slider(
                          activeColor: Colors.green,
                          inactiveColor: Colors.white,
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (val) async {
                            final position = Duration(seconds: val.toInt());
                            await audioPlayer.seek(position);

                            await audioPlayer.resume();
                          }),
                      Padding(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${position.inMinutes.toString().padLeft(2, '0')}:${(position.inSeconds.remainder(60)).toString().padLeft(2, '0')}'),
                            Text('${difference.inMinutes.toString().padLeft(2, '0')}:${(difference.inSeconds.remainder(60)).toString().padLeft(2, '0')}'),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.green,
                        child: IconButton(
                          icon:
                              Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                          iconSize: 50,
                          onPressed: () async {
                            if (isPlaying) {
                              await audioPlayer.pause();
                            } else {
                              await audioPlayer.resume();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future setAudio() async {
    final player = AudioCache(prefix: 'assets/audio/');
    final url = await player.load(widget.url);
    audioPlayer.setUrl(url.path, isLocal: true);
  }

  Future<bool> onBackPress(context) {
    Navigator.pop(context);
    return Future.value(false);
  }
}

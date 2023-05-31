import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shajra_shareef/configurations/size_config.dart';
import 'package:shajra_shareef/screen/read_shajra_screen.dart';
import 'package:shajra_shareef/screen/siz_kalmas_screen.dart';
import 'package:shajra_shareef/screen/video_player_screen.dart';
import 'package:shajra_shareef/styles/app_styles.dart';

import '../constants/nav_drawer.dart';
import 'audio_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async {

        return onBackPress(context);
      },
      child: SafeArea(
          child: Scaffold(
            drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Home'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageTiles(title: 'Read Shajra Shareef',onTap: (){
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>  ReadShajraScreen()));
                  }),
                  HomePageTiles(title: 'Listen Shajra Shareef',onTap: (){
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>  const AudioPlayerScreen()));
                  }),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageTiles(title: 'Six Kalmas',onTap: (){
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => const SixKalmasScreen()));
                  }),
                  HomePageTiles(title: 'Play Video',onTap: (){
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => const VideoPlayerScreen(

                            )));
                  }),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              const Divider(thickness: 3, color: Colors.white, indent: 20, endIndent: 20),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  // color: Colors.white,
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight! * 0.4,
                  decoration: AppStyles.shadowBigContainer,
                  child: const Center(
                    child: Text(
                        'اللَّهُـمّ صَــــــلٌ علَےَ مُحمَّــــــــدْ و علَےَ آل مُحمَّــــــــدْ كما صَــــــلٌيت علَےَ إِبْرَاهِيمَ و علَےَ آل إِبْرَاهِيمَ إِنَّك حَمِيدٌ مَجِيدٌ اللهم بارك علَےَ مُحمَّــــــــدْ و علَےَ آل مُحمَّــــــــدْ كما باركت علَےَ إِبْرَاهِيمَ و علَےَ آل إِبْرَاهِيمَ إِنَّك حَمِيدٌ مَجِيدٌ',
                    style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Future<bool> onBackPress(context) {
    showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        title: const Text('Shajra Sahrif'),
        content: const Text('Do you really want to exit?'),
        actions: [
          ElevatedButton(
              child: const Text('Yes'),
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
                // SystemNavigator.pop();
              }),
          ElevatedButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
    return Future.value(false);
  }
}

class HomePageTiles extends StatelessWidget {
  String title;
  var onTap;
  HomePageTiles({Key? key, required this.title,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: AppStyles.shadowContainer,
        height: SizeConfig.screenHeight! * 0.16,
        width: SizeConfig.screenHeight! * 0.2,
        child: Center(
            child: Text(title,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: SizeConfig.screenHeight! * 0.02,
                    color: Colors.black))),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shajra_shareef/configurations/size_config.dart';

class ReadShajraScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/Shajra-01.jpg',
    'assets/Shajra-02.jpg',
    'assets/Shajra-03.jpg',
    'assets/Shajra-04.jpg',
    'assets/Shajra-05.jpg',
    'assets/Shajra-06.jpg',
    'assets/Shajra-07.jpg',
    'assets/Shajra-08.jpg',
    'assets/Shajra-09.jpg',
    'assets/Shajra-10.jpg',
    'assets/Shajra-11.jpg',
    'assets/Shajra-12.jpg',
    'assets/Shajra-13.jpg',
    'assets/Shajra-14.jpg',
    'assets/Shajra-15.jpg',
    'assets/Shajra-16.jpg',
    'assets/Shajra-17.jpg',
    'assets/Shajra-18.jpg',
    'assets/Shajra-19.jpg',
    'assets/Shajra-20.jpg',
    'assets/Shajra-21.jpg',
    'assets/Shajra-22.jpg',
  ];

  ReadShajraScreen({Key? key}) : super(key: key);

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
            child: CarouselSlider.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(imgList[index],
                    height: SizeConfig.screenHeight! * 0.5);
              },
              // items: ,
              options: CarouselOptions(
                viewportFraction: 1.0,
                // enlargeCenterPage: true,
                // enlargeFactor: 0.4,
                aspectRatio: 1.5,
                initialPage: 0,
                reverse: true,
                enableInfiniteScroll: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

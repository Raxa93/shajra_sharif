
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shajra_shareef/constants/app_strings.dart';
import 'package:shajra_shareef/styles/app_styles.dart';

import '../configurations/size_config.dart';

class SixKalmasScreen extends StatelessWidget {
  const SixKalmasScreen({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(
                //   height: SizeConfig.screenHeight! * 1,
                //   width: SizeConfig.screenWidth! * 0.9,
                //   child: ListView.builder(
                //     itemCount: AppString.kalmasData.length,
                //       itemBuilder: (context, index) {
                //       return KalmasContainer(title: AppString.kalmasData[index]['Dua'].toString());
                //       },),
                // )
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                KalmasContainer(title: AppString.kalmasData[0]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                KalmasContainer(title: AppString.kalmasData[1]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                KalmasContainer(title: AppString.kalmasData[2]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                KalmasContainer(title: AppString.kalmasData[3]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                KalmasContainer(title: AppString.kalmasData[4]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                KalmasContainer(title: AppString.kalmasData[5]['Dua'].toString()),
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KalmasContainer extends StatelessWidget {
  String title;
   KalmasContainer({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.shadowBigContainer,
      height: SizeConfig.screenHeight! * 0.33,
      width: SizeConfig.screenHeight! * 0.4,
      child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: SizeConfig.screenHeight! * 0.024,
                    color: Colors.black)),
          )),
    );
  }
}

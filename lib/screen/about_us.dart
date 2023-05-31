
import 'package:flutter/material.dart';

import '../configurations/size_config.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(height: 15),
              Text(
                'Hazoor Khawaja Zinda Pir Khan Saab Rahmatullah alaih',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Founder of Astana Alia Naqashbandia Ghamkol Sharif',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Hazrat Khawaja Qibla Zinda Pir Khan Saab Rahmatullah Alaih was born in 1912 in Jungle-Khail, Kohat, Pakistan. Hazoor Khawaja Hazrat Zinda Pir Khan Saab R.A emanated from the illustrious family of eminent Awliya (Auliya) and Saaliheen, both from his maternal and paternal genealogies.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Titles:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Ghaus-e-Zaman, Zinda Pir, Khawaja-e-Khawajgan, Qibla-e-Alam, Sultan-ul-Awliya, Sultan-ul-Fuqra, Imam ul Zakirin, and many more',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

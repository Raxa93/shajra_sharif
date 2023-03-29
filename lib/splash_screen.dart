import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shajra_shareef/configurations/size_config.dart';
import 'package:shajra_shareef/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    waitAndNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child:  Scaffold(
          backgroundColor: const Color.fromRGBO(175,178,101,1),
    body:  Image.asset(
      "assets/splash_screen.png",
      fit: BoxFit.fill,
      height: SizeConfig.screenHeight! * 0.9,
      width: double.infinity,
      alignment: Alignment.center,
    ),
    )

    );
  }

   waitAndNavigate() async {
    await Future.delayed(const Duration(seconds: 5));
    if (mounted) {
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
              builder: (BuildContext context) => const HomeScreen()));
    }
  }
}

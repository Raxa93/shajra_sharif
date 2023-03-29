import 'package:flutter/material.dart';

import '../configurations/size_config.dart';
class AppStyles{

  static  TextStyle headline1 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: SizeConfig.screenHeight! * 0.05,
  );

  static const TextStyle headline2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );

  static  TextStyle headline3 = TextStyle(

    fontWeight: FontWeight.w600,
    fontSize: SizeConfig.screenHeight! * 0.025,
  );
  static const TextStyle headline4 = TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle bodyText1 = TextStyle(

    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontSize: 16,
  );
  static const TextStyle bodyText2 = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );
  static const TextStyle button = TextStyle(

    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static const kRoundedTContainer = BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ));


  static final labelTextStyle = TextStyle(color: Colors.grey,fontSize: SizeConfig.screenHeight! * 0.017);

  static final shadowContainer = BoxDecoration(
    // color: Colors.white,
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(203,187,167,0),
          Colors.white60
        ],
      ),
    borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.white60),
    boxShadow:[
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static final shadowBigContainer = BoxDecoration(
    // color: Colors.white,
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(203,187,167,0),
          Color.fromRGBO(200,188,173,0),
        ],
      ),
    borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.white60),
    boxShadow:[
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static const dropDownDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    ),
  );

  static final tabsDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.redAccent.shade700,Colors.redAccent]),
      borderRadius: BorderRadius.circular(40),
      border: Border.all(width: 0.5,color: Colors.white),
      color: Colors.redAccent);

}
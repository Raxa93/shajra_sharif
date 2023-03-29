import 'package:flutter/material.dart';
import 'package:shajra_shareef/splash_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color:  Color.fromRGBO(203,187,167,1)
        ),
        primarySwatch: Colors.green,
      ),
      home:  const SplashScreen(),
    );
  }
}


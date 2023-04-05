import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('assets/gomaal_shareef.jpg',height: 140,width: 200,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.copyright),
              SizedBox(width: 20),
              Text('Shajra Shareef Copyrights 2023'),
            ],
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shajra_shareef/screen/about_us.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(203,187,167,1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/4b/ef/56/4bef56a5538e31f2fad7f0cc8bd9f748.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Shajra Shareef',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Discover the Sacred Path',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              // leading: Image.asset('assets/twitter.png', color: Colors.white),
              leading: const Icon(Icons.event),
              title: const Text(
                'Up-Coming events',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('https://www.ghamkolsharif.info/');
              },
            ),


            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL(
                    'https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text(
                'Email Us',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('mailto:cnvinfo90@gmail.com');
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text(
                'Call Us',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('tel:+923415254643');
              },
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: const Text(
                'More Apps',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL(
                    'https://play.google.com/store/apps/datasafety?id=com.shajrashareef.shajra_shareef');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_business_outlined),
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (BuildContext context) => AboutUsScreen(),
                  ),
                );
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Image.asset('assets/twitter.png', color: Colors.blue),
              title: const Text(
                'Follow Us on Twitter',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('https://twitter.com/Ghamkoltv');
              },
            ),
            ListTile(
              leading: const Icon(Icons.play_arrow, color: Colors.red),
              title: const Text(
                'Subscribe to our YouTube',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('https://www.youtube.com/ghamkoltv');
              },
            ),
            ListTile(
              leading: const Icon(Icons.facebook, color: Colors.blue),
              title: const Text(
                'Follow Us on Facebook',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                _launchURL('https://www.facebook.com/ghamkoltv/');
              },
            ),

          ],
        ),
      ),
    );
  }
}

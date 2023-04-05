



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shajra_shareef/screen/about_us.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomNavBar extends StatelessWidget {
  final String subject = 'Shajra Shareef';
   const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
          const SizedBox(height: 30,),
            ListTile(
              leading: const Icon(Icons.home,color: Colors.green),
              title: const Text('About Us'),
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => const AboutUs()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.share,color: Colors.red),
              title: const Text('Share App'),
              onTap: () {
                // Navigate to settings screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined,color: Colors.green),
              title: const Text('Privacy Policy'),
              onTap: () {
                _launchUrl('https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail,color: Colors.green),
              title: const Text('Write to us'),
              onTap: () {
                _sendEmail();
              },
            ),
            const Divider(thickness: 3.0,indent: 15,endIndent: 20,),
            const Text('Follow us on social media'),
            ListTile(
              leading: const Icon(Icons.facebook,color: Colors.blueAccent,),
              title: const Text('Facebook'),
              onTap: () {
                _launchUrl('https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
            ListTile(
              leading:  const Image(
                image: AssetImage('assets/icons8-instagram-48.png',),
                height: 30,
                width: 30,
              ),
              title: const Text('Instagram'),
              onTap: () {
                _launchUrl('https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
            ListTile(
              leading:  const Image(
                image: AssetImage('assets/icons8-twitter-48.png'),
                height: 30,
                width: 30,
              ),
              title: const Text('Twitter'),
              onTap: () {
                _launchUrl('https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
            ListTile(
              leading:  const Image(
                image: AssetImage('assets/icons8-youtube-48.png'),
                height: 30,
                width: 30,
              ),
              title: const Text('Youtube'),
              onTap: () {
                _launchUrl('https://www.freeprivacypolicy.com/live/8998500b-c827-443f-bc1d-0d7ae85a3c60');
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }


  Future<void> _sendEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'cnvinfo90@gmail.com',
      query: 'subject=$subject&body=''',
    );

    try {
      await launch(params.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}

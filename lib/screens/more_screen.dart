import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About Developer'),
            onTap: () => showAboutDialog(
              context: context,
              applicationIcon: Image.asset(
                'assets/images/starter_icon/starter_icon.png',
                height: 35,
                width: 35,
              ),
              applicationName: 'News Universe',
              applicationVersion: '1.0.0',
              applicationLegalese: 'Developed by: Shahed Noor',
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                      'This app is developed by Shahed Noor. You can find more about me on my website.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextButton(
                    onPressed: () {
                      _launchURL('https://beacons.ai/developernoor');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    child: const Text('About Developer'),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () => _launchURL(
                'https://sites.google.com/view/newsuniverse/privacy-policy'),
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Terms of Conditions'),
            onTap: () => _launchURL(
                'https://sites.google.com/view/newsuniverse/terms-and-conditions'),
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Contact Us'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchURL('mailto:sancbyt@gmail.com');
                      },
                      child: const ListTile(
                        leading: Icon(Icons.email),
                        title: Text('Email: sancbyt@gmail.com'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL('tel:+8801648405873');
                      },
                      child: const ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Phone: +8801648405873'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('App Version'),
            subtitle: Text('1.0.0'),
          ),
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: const Text('Rate Us'),
            onTap: () => _launchURL(
                'https://play.google.com/store/apps/details?id=com.sancbyt.newsuniverse'),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share App'),
            onTap: () {
              final RenderBox box = context.findRenderObject() as RenderBox;
              Share.share(
                  'Check out this awesome app: https://play.google.com/store/apps/details?id=com.sancbyt.newsuniverse',
                  sharePositionOrigin:
                      box.localToGlobal(Offset.zero) & box.size);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('FAQ'),
            onTap: () => _launchURL('https://beacons.ai/developernoor'),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Licenses'),
            onTap: () => showLicensePage(context: context),
          ),
        ],
      ),
    );
  }
}

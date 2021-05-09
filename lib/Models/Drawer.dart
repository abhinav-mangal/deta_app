import 'package:deta_app/Pages/DrawerPages/AboutPage.dart';
import 'package:deta_app/Pages/DrawerPages/HelpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Pages/HomePage.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(
                Icons.cancel_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 250,
              child: DrawerHeader(
                  child: Column(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.person_outline_sharp,
                      size: 150,
                    ),
                    radius: 80.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Register/Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )),
            ),
            Divider(
              color: Colors.white,
              thickness: 2,
            ),
            SizedBox(
              height: 1.5,
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 15,
            ),
            ListTile(
              title: Text(
                'Help & Support',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              },
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 15,
            ),
            ListTile(
              title: Text(
                'Invite',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              onTap: () {
                _onShare(context);
              },
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 15,
            ),
            ListTile(
              title: Text(
                'Rate Us',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              onTap: () {
                _launchURL(url);
              },
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 15,
            ),
            ListTile(
              title: Text(
                'About App',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            Divider(
              color: Colors.white,
              endIndent: 15,
              indent: 15,
            ),
          ],
        ),
      ),
    );
  }

  void _onShare(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text =
        'Let me recommend you this application\n\nhttps://play.google.com/store/apps/details?id=com.javinindia.deta';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  static const url =
      'https://play.google.com/store/apps/details?id=com.javinindia.deta';
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

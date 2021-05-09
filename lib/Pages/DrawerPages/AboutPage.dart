import 'package:deta_app/Models/Appbar.dart';
import 'package:deta_app/Models/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedBar(),
      drawer: SideDrawer(),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Splash.png"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'About us'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'delhi electrical traders association\n[regd.]'.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

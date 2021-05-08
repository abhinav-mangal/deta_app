import 'package:deta_app/Models/Appbar.dart';
import 'package:deta_app/Models/Drawer.dart';
import 'package:deta_app/Pages/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideDrawer(),
        appBar: FixedBar(),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Splash.png"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 400,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2)),
                    child: SizedBox(
                      height: 40,
                      child: OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.6))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2)),
                    child: SizedBox(
                      height: 40,
                      child: OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.6))),
                          onPressed: () {},
                          child: Text(
                            'Guest',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

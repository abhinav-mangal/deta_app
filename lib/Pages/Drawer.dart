import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(
            height: 250,
            child: new DrawerHeader(
                child: new CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
            )),
            color: Colors.black,
          ),
          new Container(
            color: Colors.blueAccent,
            child: new Column(
              children: new List.generate(4, (int index) {
                return new ListTile(
                  leading: new Icon(Icons.info),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

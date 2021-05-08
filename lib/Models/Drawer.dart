import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/HomePage.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {},
          ),
          Divider(
            color: Colors.white,
            endIndent: 15,
            indent: 15,
          ),
        ],
      ),
    );
  }
}

import 'package:deta_app/Models/Appbar.dart';
import 'package:deta_app/Models/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    "Filter Member",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  onTap: () {
                    return AlertDialog(
                      title: Text('Select Member'),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search by Name',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ex. Dinesh Aggarwal',
                        hintStyle: TextStyle(color: Colors.blueAccent[100]),
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    onTap: () {
                      AlertDialog(
                        title: Text('Select Member'),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search by Firm Name',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ex. ABC Pvt Ltd',
                        hintStyle: TextStyle(color: Colors.blueAccent[100]),
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    onTap: () {
                      AlertDialog(
                        title: Text('Select Member'),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search by Address',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ex. a1-401',
                        hintStyle: TextStyle(color: Colors.blueAccent[100]),
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    onTap: () {
                      AlertDialog(
                        title: Text('Select Member'),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FloatingActionButton.extended(
                label: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Apply',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () {},
                backgroundColor: Colors.orange[900],
                shape: RoundedRectangleBorder(),
                elevation: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

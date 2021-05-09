import 'package:deta_app/Models/Appbar.dart';
import 'package:deta_app/Models/Drawer.dart';
import 'package:deta_app/Pages/GuestPage/MembersPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExeComPage extends StatefulWidget {
  @override
  _ExeComPageState createState() => _ExeComPageState();
}

class _ExeComPageState extends State<ExeComPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

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
          children: [
            Container(
              color: Colors.grey[200],
              child: ListTile(
                title: Text(
                  'Management',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_back_ios_rounded),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MembersPage()));
                },
              ),
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 4,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      'Office bearers'.toUpperCase(),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'members'.toUpperCase(),
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                      child: Column(children: [
                    Text(
                      'List To be implemented',
                      style: TextStyle(color: Colors.white),
                    )
                  ])),
                  Column(
                    children: [
                      Text('List To be implemented',
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

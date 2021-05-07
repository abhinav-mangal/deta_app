import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DETA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

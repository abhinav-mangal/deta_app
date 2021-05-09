import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FixedBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      centerTitle: true,
      title: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('DETA'),
          )),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}

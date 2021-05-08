import 'package:deta_app/Models/Appbar.dart';
import 'package:deta_app/Models/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final customkey = GlobalKey<FormState>();
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        child: Form(
                          key: customkey,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            style: TextStyle(color: Colors.white),
                            maxLength: 10,
                            cursorColor: Colors.orange,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter mobile no.',
                                hintStyle:
                                    TextStyle(color: Colors.blueAccent[100]),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 5)),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "You have not Entered mobile no.";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.black.withOpacity(.7))),
                        onPressed: () {
                          if (customkey.currentState.validate()) {}
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_flutter/LandingPage/LandingPage.dart';

import 'Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),

      home: MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container (
            decoration: BoxDecoration (
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(195, 20, 50, 1.0),
                      Color.fromRGBO(36, 11, 54, 1.0)
                    ])
            ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: LandingPage(),
                )
              ],
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/appbar/appbar_screen.dart';
import 'package:flutter_catelog/screens/catelog/catelog.dart';
import 'package:flutter_catelog/screens/chart/chart.dart';
import 'package:flutter_catelog/screens/lists/lists.dart';
import 'package:flutter_catelog/screens/navigation/navigations.dart';

import '../components/button.dart';
import 'language/language.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Flutter Catelog',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Button(
              text: "Catelog",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Catelog()));
              },
            ),
            Button(
              text: "App Bar",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppBarScreen()));
              },
            ),
            Button(
              text: "Navigation",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Navigations()));
              },
            ),
            Button(
              text: "List",
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lists()));
              },
            ),
            Button(
              text: "Chart",
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chart()));
              },
            ),
            Button(
              text: "Language",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Language()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/appbar/backdrop.dart';
import 'package:flutter_catelog/screens/appbar/basic_appbar.dart';
import 'package:flutter_catelog/screens/appbar/convex_appbar.dart';
import 'package:flutter_catelog/screens/appbar/float_button.dart';

import '../../components/button.dart';

class AppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  text: "Basic App Bar",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBasicAppBar()));
                  },
                ),
                Button(
                  text: "Backdrop",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyBackDrop()));
                  },
                ),
                Button(
                  text: "Convex App Bar",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyConvex()));
                  },
                ),
                Button(
                  text: "Float",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyFloatingButton()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

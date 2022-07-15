import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/navigation/bottom_navigation.dart';
import 'package:flutter_catelog/screens/navigation/bottom_tab.dart';
import 'package:flutter_catelog/screens/navigation/navigation_drawer.dart';
import 'package:flutter_catelog/screens/navigation/routes.dart';
import 'package:flutter_catelog/screens/navigation/selector.dart';
import 'package:flutter_catelog/screens/navigation/tabs.dart';

import '../../components/button.dart';

class Navigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  text: "Navigation Drawer",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyNavigationDrawer()));
                  },
                ),
                Button(
                  text: "Bottom Navigation",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBottomNavigation()));
                  },
                ),
                Button(
                  text: "Bottom Tab",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyBottomTab()));
                  },
                ),
                Button(
                  text: "Routes",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyRoutes()));
                  },
                ),
                Button(
                  text: "Selector",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MySelector()));
                  },
                ),
                Button(
                  text: "Tabs",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyTabs()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

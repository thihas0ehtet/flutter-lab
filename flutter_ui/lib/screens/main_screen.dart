import 'package:flutter/material.dart';
import 'package:my_ui/components/button.dart';
import 'package:my_ui/screens/sidebar_animation/sidebar_animation.dart';
import 'package:my_ui/screens/sidebar_menu_dashboard/sidebar_menu.dart';
import 'package:my_ui/screens/welcome_login_ui/Screens/Welcome/welcome_screen.dart';

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
                'My Flutter UI',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Button(
              text: "Welcome Login",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
            ),
            Button(
              text: "Sidebar Menu",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SideBarMenu()));
              },
            ),
            Button(
              text: "Sidebar Animation",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SidebarAnimation()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}

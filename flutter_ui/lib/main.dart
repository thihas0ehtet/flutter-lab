import 'package:flutter/material.dart';
import 'package:my_ui/config/palette.dart';
import 'package:my_ui/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
      ),
      home: MainScreen(),
    );
  }
}

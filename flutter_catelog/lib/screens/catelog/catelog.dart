import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/catelog/texts.dart';
import 'package:flutter_catelog/screens/catelog/widgets.dart';

import '../../components/button.dart';
import 'app_bar.dart';
import 'buttons.dart';
import 'snack_bar.dart';

class Catelog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Catelog'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  text: "Text",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyText()));
                  },
                ),
                Button(
                  text: "Textinput",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyTextinput()));
                  },
                ),
                Button(
                  text: "Buttons",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyButtons()));
                  },
                ),
                Button(
                  text: "Alert",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAlert()));
                  },
                ),
                Button(
                  text: "Card",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCard()));
                  },
                ),
                Button(
                  text: "App Bar",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAppBar()));
                  },
                ),
                Button(
                  text: "Snack Bar",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MySnackBar()));
                  },
                ),
                Button(
                  text: "Scaffold",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyScaffold()));
                  },
                ),
                Button(
                  text: "Stateful Widgets",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyStatefulWidgets()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

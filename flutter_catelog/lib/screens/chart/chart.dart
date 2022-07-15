import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/chart/simple_barchart.dart';

import '../../components/button.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chart'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  text: "Simple Bar chart",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SimpleBarChart()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

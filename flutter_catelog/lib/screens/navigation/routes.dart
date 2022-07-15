import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/navigation/page_two.dart';

class MyRoutes extends StatefulWidget {
  @override
  _MyRoutesState createState() => _MyRoutesState();
}

class _MyRoutesState extends State<MyRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Page 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Go to Page 2',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(context, PageTwo());
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  MyScaffold({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Scafford"),
        ),
        body: Center(
          child: Text(
            "You have pressed the button $_count times.",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 0.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _count++;
          }),
          tooltip: "Increment Counter",
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text("This is snacker"));

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("My App Bar"),
          actions: [
            IconButton(
                icon: const Icon(Icons.add_alert),
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBar);
                })
          ],
        ),
        body: Center(
          child: Text(
            "This is My App Bar",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

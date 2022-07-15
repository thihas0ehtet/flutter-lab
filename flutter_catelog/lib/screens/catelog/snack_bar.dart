import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  MySnackBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Snackbar"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
                onPressed: () {
                  scaffoldKey.currentState
                      .showSnackBar(SnackBar(content: Text("Simple Snackbar")));
                  // Scaffold.of(context).showSnackBar(SnackBar(
                  //   content: Text("Simple Snackbar"),
                  // ));
                },
                child: Text("Simple Snackbar")),
            FlatButton(
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text(
                      "SnackBar for 0.5 sec",
                      style: TextStyle(color: Colors.red),
                    ),
                    backgroundColor: Colors.yellow,
                    duration: Duration(milliseconds: 500),
                  ));
                  // Scaffold.of(context).showSnackBar(SnackBar(
                  //     content: Text(
                  //   "SnackBar for 0.5 sec",
                  //   style: TextStyle(color: Colors.red),
                  // )));
                },
                child: Text("Colored Snackbar- 0.5 sec")),
            FlatButton(
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.deepPurple,
                        ),
                        Text(
                          "Snackbar with image",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    duration: Duration(milliseconds: 500),
                    backgroundColor: Colors.limeAccent,
                  ));
                },
                child: Text("Snackbar with image")),
          ],
        ),
      )),
    );
  }
}

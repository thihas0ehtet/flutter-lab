import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text("this is my buttons"));

class MyButtons extends StatefulWidget {
  MyButtons({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("My Buttons"),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text("Flat Button")),
            RaisedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text(
                "Raised Button",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            IconButton(
                icon: Icon(
                  Icons.sms_failed,
                  color: Colors.green,
                  size: 50,
                ),
                tooltip: 'Image Button',
                onPressed: () {
                  showAlertDialog(context);
                }),
            Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              shape: CircleBorder(),
              elevation: 4,
              fillColor: Colors.blue,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

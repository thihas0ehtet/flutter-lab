import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlert extends StatefulWidget {
  MyAlert({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAlertState createState() => _MyAlertState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    void _showSnackBar(String text, String ans) {
      final snackBar = SnackBar(
          duration: Duration(milliseconds: 500),
          backgroundColor:
              ans.compareTo("Yes") == 0 ? Colors.green : Colors.red,
          content: Row(
            children: <Widget>[
              Icon(
                ans.compareTo("Yes") == 0 ? Icons.favorite : Icons.watch_later,
                color: ans.compareTo("Yes") == 0 ? Colors.pink : Colors.yellow,
                size: 24.0,
                semanticLabel: text,
              ),
              Text(text)
            ],
          ));
      scaffoldKey.currentState.showSnackBar(snackBar);
    }

    // Simple Dialog

    Future<void> _simpleDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('Simple Dialog, Is it nice?'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    Future<void> _alertDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text('Is it nice?'),
              title: Text('Alert Dialog'),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    void _timerDialog() {
      DateTime now = DateTime.now();
      showTimePicker(
              context: context,
              initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
          .then((onValue) {
        _showSnackBar(onValue.format(context), "ok");
      });
    }

    void _datePickerDialog() {
      DateTime now = DateTime.now();
      showDatePicker(
              context: context,
              initialDate: now,
              firstDate: DateTime(2000),
              lastDate: DateTime(2050))
          .then((onValue) {
        _showSnackBar('$onValue', "ok");
      });
    }

    Future<void> _cupertinoDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Welcome'),
              content: Text("Cupertino Dialog, Is it nice?"),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    return Container(
      child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text("Alert"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: _simpleDialog,
                  child: Text(
                    "Simple Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
                RaisedButton(
                  onPressed: _alertDialog,
                  child: Text(
                    "Alert Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
                RaisedButton(
                  onPressed: _datePickerDialog,
                  child: Text(
                    "Date Picker Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
                RaisedButton(
                  onPressed: _timerDialog,
                  child: Text(
                    "Timer Picker Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
                RaisedButton(
                  onPressed: _cupertinoDialog,
                  child: Text(
                    "Cupertino Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                )
              ],
            ),
          )),
    );
  }
}

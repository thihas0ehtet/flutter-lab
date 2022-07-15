import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  MyCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Card"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Card(
              color: Colors.red,
              elevation: 10.0,
              child: SizedBox(
                height: 100.0,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text(
                      'Card 1',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blueAccent,
              margin: const EdgeInsets.all(20.0),
              elevation: 10.0,
              child: SizedBox(
                height: 100.0,
                child: InkWell(
                  splashColor: Colors.deepOrange,
                  onTap: () {},
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                          child: Text('Card 2 (with Inkwell effect on tap)'))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20.0),
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: SizedBox(
                height: 100.0,
                child: Row(
                  children: [
                    Expanded(child: Text('Card 3 (with custom border radius)'))
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 6.0,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 180.0,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.asset(
                          'assets/images/cover.jpeg',
                          fit: BoxFit.cover,
                        )),
                        Positioned(
                            bottom: 16.0,
                            left: 16.0,
                            right: 16.0,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Card 4 (complex example)',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.blueAccent),
                              ),
                            ))
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(onPressed: () {}, child: const Text('SHARE')),
                      FlatButton(onPressed: () {}, child: const Text('EXPLORE'))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

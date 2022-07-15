import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class MyBackDrop extends StatefulWidget {
  @override
  _MyBackDropState createState() => _MyBackDropState();
}

class _MyBackDropState extends State<MyBackDrop> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: AppBar(
          title: Text('Backdrop'),
        ),
        headerHeight: 120.0,
        frontLayer: const Center(
          child: Text('Front Layer'),
        ),
        backLayer: const Center(
          child: Text('Back Layer'),
        ));
  }
}

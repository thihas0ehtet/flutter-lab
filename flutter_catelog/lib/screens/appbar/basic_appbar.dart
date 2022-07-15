import 'package:flutter/material.dart';

class MyBasicAppBar extends StatefulWidget {
  @override
  _MyBasicAppBarState createState() => _MyBasicAppBarState();
}

class _MyBasicAppBarState extends State<MyBasicAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Appbar'),
        leading: const Icon(Icons.tag_faces),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.directions_bike,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: const Icon(
                Icons.directions_bus,
                color: Colors.white,
              ),
              onPressed: null),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text('Boat')),
                const PopupMenuItem(child: Text('Train'))
              ];
            },
          )
        ],
      ),
    );
  }
}

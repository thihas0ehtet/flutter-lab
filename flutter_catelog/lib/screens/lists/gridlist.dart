import 'package:flutter/material.dart';

class MyGridList extends StatefulWidget {
  @override
  _MyGridListState createState() => _MyGridListState();
}

class _MyGridListState extends State<MyGridList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3.0)),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Index $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          );
        }),
      ),
    );
  }
}

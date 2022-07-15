import 'package:flutter/material.dart';

class MyListViewBuilder extends StatefulWidget {
  @override
  _MyListViewBuilderState createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text(
          'Item $idx',
          style: _biggerFont,
        ),
        trailing: const Icon(Icons.dashboard),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      }),
    );
  }
}

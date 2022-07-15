import 'package:flutter/material.dart';

class MyExpansionTitle extends StatefulWidget {
  @override
  _MyExpansionTitleState createState() => _MyExpansionTitleState();
}

class _MyExpansionTitleState extends State<MyExpansionTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Title'),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index])),
    );
  }
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      title: Text(root.title),
      key: PageStorageKey<Entry>(root),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

const List<Entry> data = <Entry>[
  Entry('Chapter A', <Entry>[
    Entry('Section A0', <Entry>[
      Entry('Item A0.1'),
      Entry('Item A0.2'),
    ]),
    Entry('Section A1'),
    Entry('Section A2')
  ]),
  Entry('Chapter B', <Entry>[Entry('Section B0'), Entry('Section B1')]),
];

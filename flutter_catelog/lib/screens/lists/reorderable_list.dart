import 'package:flutter/material.dart';

class MyReorderableList extends StatefulWidget {
  @override
  _MyReorderableListState createState() => _MyReorderableListState();
}

class _ListItem {
  _ListItem(this.value, {this.checked});
  final String value;
  bool checked;
}

class _MyReorderableListState extends State<MyReorderableList> {
  bool _reverseSort = false;
  static final _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
  ].map((item) => _ListItem(item, checked: false)).toList();

  // dropped into a new position.
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final _ListItem item = _items.removeAt(oldIndex);
      _items.insert(newIdx, item);
    });
  }

  // Handler called when the "sort" button on appbar is clicked.
  void _onSort() {
    setState(() {
      _reverseSort = !_reverseSort;
      _items.sort((_ListItem a, _ListItem b) => _reverseSort
          ? b.value.compareTo(a.value)
          : a.value.compareTo(b.value));
    });
  }

  @override
  Widget build(BuildContext context) {
    final _appbar = AppBar(
      title: const Text('Reorderable list'),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.sort_by_alpha),
          tooltip: 'Sort',
          onPressed: _onSort,
        ),
      ],
    );
    final _listTiles = _items
        .map(
          (item) => CheckboxListTile(
            key: Key(item.value),
            value: item.checked ?? false,
            onChanged: (bool newValue) {
              setState(() => item.checked = newValue);
            },
            title: Text('This item represents ${item.value}.'),
            isThreeLine: true,
            subtitle: Text('Item ${item.value}, checked=${item.checked}'),
            secondary: const Icon(Icons.drag_handle),
          ),
        )
        .toList();
    return Scaffold(
      appBar: _appbar,
      body: ReorderableListView(
        onReorder: _onReorder,
        children: _listTiles,
      ),
    );
  }
}

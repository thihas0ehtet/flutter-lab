import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/lists/data_table.dart';
import 'package:flutter_catelog/screens/lists/expansion_title.dart';
import 'package:flutter_catelog/screens/lists/gridlist.dart';
import 'package:flutter_catelog/screens/lists/listview_builder.dart';
import 'package:flutter_catelog/screens/lists/reorderable_list.dart';

import '../../components/button.dart';

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  text: "Expansion Title",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyExpansionTitle()));
                  },
                ),
                Button(
                  text: "Listview",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListViewBuilder()));
                  },
                ),
                Button(
                  text: "Grid",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyGridList()));
                  },
                ),
                Button(
                  text: "Data Table",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyDataTable()));
                  },
                ),
                Button(
                  text: "Reorderable List",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyReorderableList()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

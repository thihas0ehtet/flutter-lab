import 'package:flutter/material.dart';

class PageTwo extends MaterialPageRoute<void> {
  PageTwo()
      : super(builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Page 2'),
                elevation: 1.0,
              ),
              body: Center(
                child: Text('Page 2222'),
              ));
        });
}

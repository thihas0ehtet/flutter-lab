import 'package:flutter/material.dart';

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  bool _switchVal = true;
  bool _checkboxVal = true;
  int _radioVal = 0;
  double _slider1Val = 0.5;
  double _slider2Val = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widgets'),
      ),
      body: ListView(
        children: [
          const Text('Switch'),
          Center(
            child: Switch(
              onChanged: (bool value) {
                setState(() => this._switchVal = value);
              },
              value: this._switchVal,
            ),
          ),
          const Divider(),
          const Text('Checkbox'),
          Center(
              child: Checkbox(
            onChanged: (bool value) {
              setState(() => this._checkboxVal = value);
            },
            value: this._checkboxVal,
          )),
          const Divider(),
          const Text('Radio'),
          Center(
            child: Row(
                children: [0, 1, 2, 3]
                    .map((int index) => Radio<int>(
                          value: index,
                          groupValue: this._radioVal,
                          onChanged: (int value) {
                            setState(() => this._radioVal = value);
                          },
                        ))
                    .toList()),
          ),
          const Divider(),
          const Text('Slider'),
          Slider(
              value: this._slider1Val,
              onChanged: (double value) {
                setState(() => this._slider1Val = value);
              }),
          Slider(
              value: _slider2Val,
              max: 100.0,
              divisions: 5,
              label: '${_slider2Val.round()}',
              onChanged: (double value) {
                setState(() => _slider2Val = value);
              }),
          const Divider(),
          const Text('Liner Progress Indicator'),
          const LinearProgressIndicator(),
          const Divider(),
          const Text('Circular Progress Indicator'),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  MyText({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Simple Text"),
                Text(
                  "Over flow Text will skipped automatically. So lets have some Long text to get skipped",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "Shadow Text",
                  style: TextStyle(fontSize: 24, color: Colors.green, shadows: [
                    Shadow(color: Colors.amber, offset: Offset(2, 4))
                  ]),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Hi, I am ',
                    //default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Italic, ',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: 'Bold,',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'Normal ',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: 'Underline ',
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
                Text.rich(TextSpan(text: "thiha", children: <TextSpan>[
                  TextSpan(
                      text: " soe ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "htet",
                      style: TextStyle(fontStyle: FontStyle.italic))
                ])),
                RichText(
                  softWrap: true,
                  text: TextSpan(
                    text: 'I am ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'RichText ',
                          style: TextStyle(color: Colors.green, fontSize: 24)),
                      TextSpan(
                          text: 'similar to ',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: 'Text.rich',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        text: "Thiha Soe Htet"))
              ],
            ),
          ),
        ));
  }
}

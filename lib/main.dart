import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _title = "CM Workshop Layout";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: ListView(
          children: <Widget>[
            headerSection,
            titleSection,
            buttonSection,
            courseSection
          ],
        ),
      ),
    );
  }
}

Widget headerSection = Container(
  height: 250,
  color: Colors.blue,
);
Widget titleSection = Container(
  height: 250,
  color: Colors.red,
);
Widget buttonSection = Container(
  height: 250,
  color: Colors.green,
);
Widget courseSection = Container(
  height: 250,
  color: Colors.yellow,
);

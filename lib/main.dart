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

//เเสดงรูปภาพ
Widget headerSection = Image.network(
    "https://freedesignfile.com/upload/2018/05/Cartoon-kids-with-back-to-school-background-vector-04.jpg");

//เเสดงเนื้อหาของรูป
Widget titleSection = Padding(
  padding: EdgeInsets.all(50),
  child: Row(
    children: <Widget>[
      //ใช้ Expanded ดันเพื่อให้เกิดพื้นที่ระหว่าง ข้อมูลฝั่งซ้าย กับ ข้อมูลฝั่งขวา
      Expanded(
        //ข้อมูลฝั่งซ้าย
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "School",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Bangkok",
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        ),
      ),
      //ข้อมูลฝั่งขวา
      Icon(
        Icons.thumb_up,
        color: Colors.blue,
      ),
      Container(
        margin: EdgeInsets.only(left: 8),
        child: Text("99"),
      ),
    ],
  ),
);

Widget buttonSection = Container(
  height: 250,
  color: Colors.green,
);
Widget courseSection = Container(
  height: 250,
  color: Colors.yellow,
);

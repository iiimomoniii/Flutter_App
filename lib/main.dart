import 'package:flutter/material.dart';
//เพิ่ม package ในการเเสดงรูปภาพ
import 'package:transparent_image/transparent_image.dart';
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

//เเสดงปุ่มสำหรับเป็น action Like, Comment, Share ให้กับ รูป
Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    //ส่งicon กับ label เข้าไปที่ _buildButtonColumn เพื่อสร้าง Column
    _buildButtonColumn(icon: Icons.thumb_up, label: "Like"),
    _buildButtonColumn(icon: Icons.comment, label: "Comment"),
    _buildButtonColumn(icon: Icons.share, label: "Share")
  ],
);

//ฟังก์ชั่นสำหรับสร้าง Column ที่เป็น Container
Column _buildButtonColumn({IconData icon, String label}) {
  var icColor = Colors.grey.shade500;
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: icColor,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, color: icColor)),
      ),
    ],
  );
}

//เเสดงส่วนของ list view ในเเนวนอน
Widget courseSection = Container(
  //กำหนดให้ list view ห่างจากข้อมูลด้านบน
  margin: EdgeInsets.only(top: 70),
  //เว้นระยะระหว่าง card
  padding: EdgeInsets.all(8),
  child: Column(
    //ให้รูปกับข้อความมาเริ่มต้นที่ทางซ้าย ในเเนวเเกน x
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      //ระยะระหว่าง Text
      Padding(
        padding: EdgeInsets.all(8),
        child: Text("Mobiles & Web Course"),
      ),

      Container(
          //ต้องมีการกำหนดความสูงของ Card ที่จะเเสดงรูป
          height: 120,
          child: ListView(
            //กำหนดให้อยู่ในเเนวนอน
            scrollDirection: Axis.horizontal,

            //สร้าง Card ขึ้นมาจาก Function _buildCardListViewColumn
            children: <Widget>[
              _buildCardListViewColumn(
                  url:
                      "https://freedesignfile.com/upload/2018/05/Cartoon-kids-with-back-to-school-background-vector-04.jpg"),
              _buildCardListViewColumn(
                  url:
                      "https://freedesignfile.com/upload/2018/05/Cartoon-kids-with-back-to-school-background-vector-04.jpg"),
              _buildCardListViewColumn(
                  url:
                      "https://freedesignfile.com/upload/2018/05/Cartoon-kids-with-back-to-school-background-vector-04.jpg"),
              _buildCardListViewColumn(
                  url:
                      "https://freedesignfile.com/upload/2018/05/Cartoon-kids-with-back-to-school-background-vector-04.jpg")
            ],
          ))
      //ListView.Builder (ใช้สำหรับ รูปเยอะ)
    ],
  ),
);

//Function สำหรับ สร้าง Card
Card _buildCardListViewColumn({String url}) {
  return Card(
    //ตอนโหลดรูปให้เเสดงรูปที่เป็รค่า default
    child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url),
  );
}

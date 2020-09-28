import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CM Layout",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CM Layout"),
        ),
//        //สร้าง ROW ขึ้นมา 1 Row
//        body: Row(
//          //กำหนดให้ข้อมูล ที่อยู่ใน ROW ทั้งหมดอยู่ตรงกลาง
//          //MainAxisAlignment
//          // (.center) อยู่ตรงกลางจอในเเนวเเกน x ,
//          // (.spaceEvenly) อยู่ตรงกลางจอในเเนวเเกน x ถ้ามีมากว่า 1 คำให้มีพื้ที่ระหว่างคำ
//          // (.spaceAround) อยู่ตรงกลางจอในเเนวเเกน x ถ้ามีมากว่า 1 คำให้มีพื้ที่ระหว่างคำ โดยเเบ่งพื้นที่ว่างเท่าๆกัน
//          // (.spaceBetween) ให้คำชิดจอ
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          // CrossAxisAlignment
//          // (.start) อยู่ชิดด้านบนในเเนวเเกน y
//          // (.end) อยู่ชิดจอด้านล่างในเเนวเเกน y
//          // (.baseline) ให้ตัวหนังสือที่อยู่ row เดียวกัน ตัวอักษรให้ชิบขอบเหมือนกัน กรณีที่มีตัวหนังสือกขนาดไม่เท่ากัน มี properties เพิ่มเติม textBaseline
//          crossAxisAlignment: CrossAxisAlignment.baseline,
//          // (.alphabetic) ด้านล่างตัวหนังสือจะชิดขอบล่างเหมือนกัน กรณีที่มีตัวหนังสือกขนาดไม่เท่ากัน
//          textBaseline: TextBaseline.alphabetic,
//          // TextDirection
//          // (.rtl) เรียงคำจากซ้ายไปขวา
//          textDirection: TextDirection.rtl,
//          //ภายใต้ ROW จะมี ข้อมูล Logo , Codemobiles , CM Devs
//          children: <Widget>[
//            FlutterLogo(),
//            Text(
//              "Codemobiles",
//              style: TextStyle(fontSize: 30),
//            ),
//            Text("CM Devs", style: TextStyle(fontSize: 20))
//          ],
//        ),
        //สร้าง Column ขึ้นมา 1 Column
        body: Column(
          // MainAxisAlignment
          // (.start) อยู่ชิดด้านบนในเเนวเเกน y
          // (.end) อยู่ชิดด้านล่างในเเนวเเกน y
          mainAxisAlignment: MainAxisAlignment.start,
          // CrossAxisAlignment
          // (.start) จะชิดขอบซ้ายของ Column
          // (.end) จะชิดขอบขวาของ Column
          crossAxisAlignment: CrossAxisAlignment.end,
          //MainAxisSize
          // (.min) จะเเสดงเนื้อหาโดยกินพื้นที่ให้น้อยที่สุด
          // (.max) จะเเสดงเนื้อหาเต็มพื่้นที่ที่เหลืออยู่
          mainAxisSize: MainAxisSize.min,
          //ภายใต้ Column จะมี ข้อมูล Logo , Codemobiles , CM Devs ที่จะถูกจัดอยู่ใน column เดียวกัน
          children: <Widget>[
            FlutterLogo(),
            Text(
              "Codemobiles",
              style: TextStyle(fontSize: 30),
            ),
            Text("CM Devs", style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}

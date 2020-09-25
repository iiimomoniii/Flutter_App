import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//จัดระยะเว้นขอบ กำหนดทิศทาของ container
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CM Layout",
      home: Scaffold(
        //ส่วน Header ของ Page
        //กำหนด เป็น appBar
        appBar: AppBar(
          //เเสดงข้อความที่ Bar
          title: Text("CM Layout"),
        ),
        //ส่วน ฺBody ของ Page
        body: Container(
          //กำหนดสีพื่นหลังของ Container
          color: Colors.amber,
          //alignment เป็นกำหนดตำเเหน่งของข้อความ
          //FractionalOffset โดยใช้เเกน x,y โดยเ(0,0)จะอยู่ด้านบนซ้ายมือ
          alignment: FractionalOffset(1,0),
          //ถ้ามีข้อความเกิดขึ้นข้อความ พื่นหลังของ Container (color: Colors) จะมีการเปลี่ยนเเปลงตามขอบเขตของ ข้อความนั้น
          child: Text("codemobiles"),
        ),
      ),
    );
  }
}

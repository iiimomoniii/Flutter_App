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
          //color: Colors.amber,
          //constraints กำหนดความกว้างของ Container
          constraints: BoxConstraints.expand(width:150),
          // padding เป็นตัวกำหนดให้ข้อความห่างจากขอบจอทุกด้าน
          padding: EdgeInsets.all(20),
          // margin เป็นตัวกำหนดให้ Container จากขอบจอทุกด้าน
          margin: EdgeInsets.all(20),
          //alignment เป็นกำหนดตำเเหน่งของข้อความ
          //Alignment Alignment.topCenter ชิดจอด้านบน
          //alignment: Alignment.topCenter,
          //decoration ตกเเต่ง Container
          //ถ้าจะกำหนดสีให้กับ Container ให้ ประกาศสีภายใต้ BoxDecoration
          decoration: BoxDecoration(
            //สี Container
            //color: Colors.green,
            //เส้น Container
            border: Border.all(
                //ขนาดเส้น
                width: 15,
                //สีเส้น
                color: Colors.black,
                //ลักษณะเส้น
                style: BorderStyle.solid,
            ),
            //กำหนดความโค้งของ BoxDecoration
            borderRadius: BorderRadius.circular(20),
            //กำหนดไล่เฉด
            gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow],
              //ไล่สีีพื้นหลังจากซบนลงล่าง สีเเดง => สีเหลือง
              begin: Alignment.topCenter
            )
          ),
          //ถ้ามีข้อความเกิดขึ้นข้อความ พื่นหลังของ Container (color: Colors) จะมีการเปลี่ยนเเปลงตามขอบเขตของ ข้อความนั้น
          child: Text("codemobiles"),
        ),
      ),
    );
  }
}

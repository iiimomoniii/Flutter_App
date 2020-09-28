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
        //ตัวอย่างการนำ ROW เเละ Column ไปใช้
        //กำหนด ROW ขึ้นมา
        body: Row(
          //ภายใต้ ROW มี Logo กับ Column
          children: <Widget>[
            FlutterLogo(
              //กำหนดขนาด Logo 
              size: 50,
            ),
            //Container ใส่เพื่อจัดตำเเหน่ง ของ Column ที่อยู่ภายใต้ Row
            Container(
              //กำหนดให้ตัวอักษรใน Column ห่างจากขอบทางซ้ายมือ 4
              margin: EdgeInsets.only(left: 4),
              child: Column(
                //ตัวอักษรจะชิดซ้ายมือของ Column
                crossAxisAlignment: CrossAxisAlignment.start,
                //กำหนดให้ตัวอักษรใช้ขนาดพื้นที่ให้น้อยที่สุด ส่งผลให้ Logo ใช้พื้นที่น้อยลงด้วย
                mainAxisSize: MainAxisSize.min,
                //ภายใต้ Column มี Text
                children: <Widget>[
                  Text(
                    "Natdanai",
                    //กำหนดขนาดัวอักษร (fontSize) เเละ (fontWeight)ความหนา
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(fontSize: 15),
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}

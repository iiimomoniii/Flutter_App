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
      //สร้าง ROW ขึ้นมา 1 Row
      body: Row(
        //ภายใต้ ROW จะมี ข้อมูล Logo , Codemobiles , CM Devs
        children: <Widget>[FlutterLogo(), Text("Codemobiles"), Text("CM Devs")],
      ),
      ),

    );
  }
}

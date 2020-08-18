import 'package:flutter/material.dart';

class MedicalClassroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("妙手学院"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("妙手学院", style: TextStyle(fontSize: 30, color: Colors.pink)),
            Image.asset("assets/images/tabbarIcon/mine_normal.png", width: 30, height: 30,)
          ],
        ),
      ),
    );
  }
}
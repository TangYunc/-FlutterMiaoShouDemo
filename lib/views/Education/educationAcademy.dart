import 'package:flutter/material.dart';

class EducationAcademy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("患教中心"),
      ),
      body: Center(
        child: Text("患教中心", style: TextStyle(fontSize: 30, color: Colors.pink)),
      ),
    );
  }
}
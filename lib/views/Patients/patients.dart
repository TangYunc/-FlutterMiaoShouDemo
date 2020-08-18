import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("患者"),
      ),
      body: Center(
        child: Text("患者", style: TextStyle(fontSize: 30, color: Colors.orange)),
      ),
    );
  }
}

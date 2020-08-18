import 'package:flutter/material.dart';
import 'package:miaoshou_app/components/color_config.dart';
import 'package:miaoshou_app/components/tabbar_item.dart';
import 'package:miaoshou_app/views/Education/educationAcademy.dart';
import 'package:miaoshou_app/views/Home/home.dart';
import 'package:miaoshou_app/views/MedicalClassroom/medicalClassroom.dart';
import 'package:miaoshou_app/views/Mine/mine.dart';
import 'package:miaoshou_app/views/Patients/patients.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "妙手医生",
      theme: ThemeData(
        primaryColor: Colors.blue,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      home: MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget {
  @override
  _MyStackPageState createState() => _MyStackPageState();
}

class _MyStackPageState extends State<MyStackPage> {

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          items: [
            TabbarItem("home", "首页"),
            TabbarItem("patient", "患者"),
            TabbarItem("miaoAcademy", "妙手学院"),
            TabbarItem("education", "患教中心"),
            TabbarItem("mine", "我的")
      ],
      onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
      },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Home(),
          Patients(),
          EducationAcademy(),
          MedicalClassroom(),
          Mine()
        ],
      ),
    );
  }
}


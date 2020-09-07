import 'package:flutter/material.dart';
import 'package:miaoshou_app/models/mine_model.dart';
import 'package:miaoshou_app/components/color_config.dart';
import 'package:miaoshou_app/views/Mine/doctorInfo.dart';

class HeaderItem extends StatelessWidget {

  final MineItem mineItem;
  HeaderItem(this.mineItem);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 116,
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
//              mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    getDoctorAvert(),
                    getDoctorInfo()
                  ],
              ),
              getSpaceLine()
            ],
          ),
        ),
      ),
      onTap: () {
        junmDoctorInfoWidget(context);
      },
    );
  }

  Widget getDoctorAvert() {
    return Container(
      width: 106,
      height: 106,
      padding: EdgeInsets.only(left: 16, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(70 / 2.0),
        child: Image.network(mineItem.avartImgUrl, width: 70, height: 70,),
      ),
    );
  }

  Widget getDoctorInfo() {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 5),
      child: Column(
        children: <Widget>[
          Text(mineItem.doctorName, style: TextStyle(fontSize: 18, color: Color(kBlackTextColor))),
          Text(mineItem.cellPhone, style: TextStyle(fontSize: 13, color: Color(kBlackText888Color))),
        ],
      ),
    );
  }

  Widget getGapSpaceWidget() {
    return Container(
      height: 10,
      padding: EdgeInsets.only(left: 54),
      decoration: BoxDecoration(
//        color: Color(0xffeeeeee),
          boxShadow: <BoxShadow>[BoxShadow(
              color: Color(0xffeeeeee)
          )]
      ),
    );
  }
  Widget getSpaceLine() {
    return Container(
      height: 10,
      color: Color(kBgViewColor),
    );
  }
  
  Widget junmDoctorInfoWidget(BuildContext context) {
    print("医生信息");
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new DoctorInfo()));
  }
}



import 'package:flutter/material.dart';
import 'package:miaoshou_app/models/mine_model.dart';

class MineListItem extends StatelessWidget {

  final SingleItem item;
  MineListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              getIconWidget(),
              getTitleWidget()
            ],
          ),
          getGapLineWidget()
        ],
      ),
    );
  }

  Widget getIconWidget() {
    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Image.asset(item.image, width: 19, height: 19),
    );
  }

  Widget getTitleWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(item.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0Xff333333)))
    );
  }

  Widget getGapLineWidget() {
    return Divider(height: 1.0, indent: 54.0, color: Color(0xffeeeeee));
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
}




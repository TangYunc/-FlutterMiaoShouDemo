import 'package:flutter/material.dart';
import 'package:miaoshou_app/models/mine_model.dart';
import 'package:miaoshou_app/views/Mine/childCpns/mine_list_item.dart';

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: MineBody()
    );
  }
}

class MineBody extends StatefulWidget {
  @override
  _MineBodyState createState() => _MineBodyState();
}

class _MineBodyState extends State<MineBody> {

  MineItem mineItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> commentData =
      {
        'avartImgUrl':'assets/images/square_1.png',
        'doctorName':'鸿运当头',
        'cellPhone':'18210038888',
        'replay':[
          {'title':'我的认证', 'image':'assets/images/mine/icon_wdrz.png'},
          {'title':'我的收入', 'image':'assets/images/mine/icon_wdsr.png'},
          {'title':'问诊服务设置', 'image':'assets/images/mine/icon_wzfwsz.png'},
          {'title':'我的用药记录', 'image':'assets/images/mine/icon_wdwzjl.png'},
          {'title':'邀请医生', 'image':'assets/images/mine/icon_yqysx.png'},
          {'title':'妙手使用指南', 'image':'assets/images/mine/icon_msyszn.png'}
        ]
      };

    mineItem = MineItem.fromJson(commentData);
//    setState(() {
//      this.mineItems = mines;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mineItem.replay.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return MineListItem(mineItem.replay[index]);
    }
    );
  }
}

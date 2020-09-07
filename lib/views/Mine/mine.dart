import 'package:flutter/material.dart';
import 'package:miaoshou_app/models/mine_model.dart';
import 'package:miaoshou_app/views/Mine/childCpns/mine_list_headerItem.dart';
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
        'avartImgUrl':'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561011314262&di=29253749380f34583bbcae1a614d6f6e&imgtype=0&src=http%3A%2F%2Fimg3.mukewang.com%2F5c18cf540001ac8206000338.jpg',
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          HeaderItem(mineItem),
          ListView.builder(
            shrinkWrap: true,
            itemCount: mineItem.replay.length,
            itemBuilder: (BuildContext context, int index) {
            return MineListItem(mineItem.replay[index]);
          }
          ),
        ],
      ),
    );
  }
}

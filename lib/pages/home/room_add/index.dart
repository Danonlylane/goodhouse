import 'package:flutter/material.dart';
import 'package:goodhouse/widget/common_floating_button.dart';
import 'package:goodhouse/widget/common_form_item.dart';
import 'package:goodhouse/widget/common_radio_form_item.dart';
import 'package:goodhouse/widget/common_title.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0;
  int decorationType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('房源发布'),
      ),
      body: ListView(
        children: [
          CommonTitle(title: '房源信息'),
          CommonFormItem(
              //自定义小区
              label: '小区',
              contentBuilder: (context) {
                return Container(
                    child: GestureDetector(
                  behavior: HitTestBehavior.translucent, //解决点击空白地方无效问题
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('请选择小区', style: TextStyle(fontSize: 16.0)),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('search');
                  },
                ));
              }),
          CommonFormItem(
            label: '租金',
            hitText: '请输入租金',
            suffixText: '元/月',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            hitText: '请输入房屋大小',
            suffixText: '平方米',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
            label: '租赁方式',
            options: ['合租', '整租'],
            value: rentType,
            onChange: (index) {
              setState(() {
                rentType = index;
              });
            },
          ),
          CommonRadioFormItem(
              label: '装修',
              options: ['精装', '简装'],
              value: decorationType,
              onChange: (index) {
                setState(() {
                  decorationType = index;
                });
              }),
          CommonTitle(title: '房屋头像'),
          CommonTitle(title: '房屋标题'),
          CommonTitle(title: '房屋配置'),
          CommonTitle(title: '房屋描述'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton(
        title: '提交',
        onTap: () {},
      ),
    );
  }
}

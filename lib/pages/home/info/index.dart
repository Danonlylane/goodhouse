import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/data.dart';
import 'package:goodhouse/pages/home/info/item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({Key? key, this.showTitle = false, this.dataList = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              padding: EdgeInsets.only(left: 7),
              alignment: Alignment.centerLeft,
              child: Text(
                '最新资讯',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
          Column(
            // 所以在这里传入一个 map 值的 item 列表
            children: dataList.map((item) => ItemWidget(data: item)).toList(),
          )
        ],
      ),
    );
  }
}

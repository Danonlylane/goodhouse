import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/data.dart';

var textStyle = TextStyle(fontSize: 14, color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;

  // data 作为必传参数，是一个 InfoItem 列表
  const ItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image.network(
            data.imageUrl,
            height: 150,
            width: 120,
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.source, style: textStyle),
                  Text(data.time, style: textStyle),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_index/index_recommend_item_widget.dart';
import 'index_recommend_data.dart';

class IndexRecomment extends StatelessWidget {
  final List<IndexRecommendItem>? dataList;

  const IndexRecomment({Key? key, this.dataList = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0x08000000),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐', style: TextStyle(fontWeight: FontWeight.w600)),
              Text('更多', style: TextStyle(fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Wrap(
              runSpacing: 10.0,
              spacing: 10.0,
              children: dataList!
                  .map((item) => IndexRecommendItemWidget(item))
                  .toList()),
        ],
      ),
    );
  }
}

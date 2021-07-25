import 'package:flutter/material.dart';
import 'index_recomment_data.dart';

class IndexRecomment extends StatelessWidget {
  final List<IndexRecommendItem>? dataList;

  const IndexRecomment({Key? key, this.dataList = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          // color: Colors.teal,
          ),
      child: Column(
        children: [
          Row(
            children: [
              Text('房屋推荐'),
              Text('更多'),
            ],
          ),
          Wrap(
              children: dataList!
                  .map((item) => Container(
                        decoration: BoxDecoration(color: Colors.green),
                        width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
                        height: 100.0,
                      ))
                  .toList()),
        ],
      ),
    );
  }
}

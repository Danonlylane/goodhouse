import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_index/index_recommend_data.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommendItemWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width) / 2.3,
        // width: 170.0,
        height: 90.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data.title, style: textStyle),
                Text(data.subTitle, style: textStyle),
              ],
            ),
            Image.asset(data.imageUrl, width: 60.0),
          ],
        ),
      ),
    );
  }
}

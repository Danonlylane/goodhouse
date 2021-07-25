import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/table_index/index_navigator.dart';
import 'package:goodhouse/pages/home/table_index/index_navigator_item.dart';
import 'package:goodhouse/widget/common_swiper.dart';

import 'index_recomment.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabIndex'),
      ),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecomment(),
          // IndexNavigatorItem(title, imageUrl, onTap)
          // Text("这里是内容区"),
        ],
      ),
    );
  }
}

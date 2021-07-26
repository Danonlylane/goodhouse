import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/index.dart';
import 'package:goodhouse/pages/home/tab_index/index_navigator.dart';
import 'package:goodhouse/pages/home/tab_index/index_navigator_item.dart';
import 'package:goodhouse/widget/common_swiper.dart';
import 'package:goodhouse/widget/search_bar/index.dart';

import 'index_recommend.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          shwoLocation: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        // title: Text('fkdsj'),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecomment(),
          Info(),
          // IndexNavigatorItem(title, imageUrl, onTap)
          // Text("这里是内容区"),
        ],
      ),
    );
  }
}

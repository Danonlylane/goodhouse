import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_search/dataList.dart';
import 'package:goodhouse/widget/room_list_item_widget.dart';

class IndexSearch extends StatefulWidget {
  const IndexSearch({Key? key}) : super(key: key);

  @override
  _IndexSearchState createState() => _IndexSearchState();
}

class _IndexSearchState extends State<IndexSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索tab'),
      ),
      body: Column(
        children: [
          Container(height: 20, child: Text('fiterBar')),
          Expanded(
            child: ListView(
              children: dataList
                  .map((item) => RoomListItemWidget(
                        data: item,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

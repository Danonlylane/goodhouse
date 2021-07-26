import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_info/index.dart';
import 'package:goodhouse/pages/home/tab_prifile/index.dart';
import 'package:goodhouse/pages/home/tab_search/index.dart';
import 'package:goodhouse/pages/home/tab_index/index.dart';
import 'package:goodhouse/widget/page_content.dart';

// tab内容区
List<Widget> tabViewList = [
  TabIndex(),
  // PageContent(name: "搜索"),
  IndexSearch(),
  // PageContent(name: "资讯"),
  TabInfo(),
  TabProfile(),
];

// bottomNavigatorItem

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}

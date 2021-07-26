import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/index.dart';
import 'package:goodhouse/pages/home/tab_prifile/function_button.dart';
import 'package:goodhouse/pages/home/tab_prifile/header.dart';

import 'advertisement.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
        title: Text(
          '我的',
          // style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          TabProfileHeader(),
          FunctionButton(),
          Advertisement(),
          Info(
            showTitle: true,
          ),
        ],
      ),
    );
  }
}

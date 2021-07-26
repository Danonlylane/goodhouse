import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_prifile/function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;

  const FunctionButtonWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (null != data.onTapHandle) {
          data.onTapHandle!(context);
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          children: [
            Image.asset(data.imageUrl),
            Text(data.title),
          ],
        ),
      ),
    );
  }
}

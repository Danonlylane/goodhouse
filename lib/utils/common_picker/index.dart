import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonPicker {
  static showPicker({
    required BuildContext context,
    required List<String> options,
    required int value,
    double height = 300,
  }) {
    return showCupertinoModalPopup<int>(
        context: context,
        builder: (BuildContext context) {
          var buttonTextStyle =
              TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
          var controller = FixedExtentScrollController(initialItem: value);
          return Container(
            height: height,
            color: Colors.grey.shade100,
            child: Column(
              children: [
                Container(
                  color: Colors.grey.shade300,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('取消', style: buttonTextStyle),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(2);
                        },
                        child: Text('确定', style: buttonTextStyle),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: CupertinoPicker(
                    scrollController: controller,
                    itemExtent: 32.0,
                    onSelectedItemChanged: (val) {},
                    children: options.map((item) => Text(item)).toList(),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

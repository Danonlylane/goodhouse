import 'package:flutter/material.dart';
import 'package:goodhouse/widget/common_form_item.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged onChange;

  const CommonRadioFormItem(
      {Key? key,
      required this.label,
      required this.options,
      required this.value,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 20 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              options.length,
              (index) => Row(
                children: [
                  Radio(
                    value: index,
                    groupValue: value,
                    onChanged: onChange,
                  ),
                  Text(options[index]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

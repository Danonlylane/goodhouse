import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String? label;
  final Widget Function(BuildContext context)? contentBuilder;
  final Widget? suffix;
  final String? suffixText;
  final String? hitText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;

  const CommonFormItem(
      {Key? key,
      this.label,
      this.contentBuilder,
      this.suffix,
      this.suffixText,
      this.hitText,
      this.onChanged,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 14.0, right: 14.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 1.0, color: Theme.of(context).dividerColor //获取主题颜色
                ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 100.0,
              child: Text(
                label!,
                style: TextStyle(fontSize: 16.0, color: Colors.black87),
              ),
            ),
            Expanded(
                child: contentBuilder != null
                    ? contentBuilder!(context)
                    : TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hitText,
                        ),
                      )),
            if (suffix != null) suffix!,
            if (suffix == null && suffixText != null) Text(suffixText!),
          ],
        ));
  }
}

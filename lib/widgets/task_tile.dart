import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_colors.dart';

class TaskTile extends StatelessWidget {
  final String newtaskTitle;
  bool isChecked;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  TaskTile({
    this.newtaskTitle,
    this.isChecked,
    this.checkBoxCallBack,
    this.longPressCallBack,
  });

  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        newtaskTitle,
        style: TextStyle(
          color: AppColor.xBackgroundColor1,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: AppColor.xBackgroundColor1,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

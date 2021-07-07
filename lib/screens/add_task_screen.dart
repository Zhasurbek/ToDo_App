import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_text_styles.dart';
import 'package:todo_app/constants/container_decorations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/constants/app_colors.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: xListOfTaskContDecor,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Your Task',
              style: xAddYourTaskTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            TextField(
              autofocus: true,
              onChanged: (newTitle) {
                newTaskTitle = newTitle;
              },
              decoration: xTextFieldDecoration.copyWith(
                hintText: 'Add your task',
                fillColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            FlatButton(
              color: AppColor.xBackgroundColor1,
              height: 45.0,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: xAddIconTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

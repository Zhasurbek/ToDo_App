import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/constants/app_text_styles.dart';
import 'package:todo_app/constants/container_decorations.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColor.xBackgroundColor1,
          AppColor.xBackgroundColor2,
          AppColor.xBackgroundColor3,
          AppColor.xBackgroundColor4,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.xBackgroundColor1,
          child: const Icon(
            Icons.add,
            size: 40.0,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                  left: 30.0,
                  right: 30.0,
                  bottom: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        size: 40,
                        color: AppColor.xBackgroundColor1,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'ToDo',
                      style: xTodoTextStyle,
                    ),
                    Text(
                      "${Provider.of<TaskData>(context, listen: false).taskCount} tasks today",
                      style: xNumOfTaskTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: xListOfTaskContDecor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TaskList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

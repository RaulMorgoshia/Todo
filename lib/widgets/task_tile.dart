import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;

  TaskTile(
      {super.key, required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack});

  final String taskTitle;
  final Function checkboxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            checkboxCallBack(newValue);
          }),
    );
  }
}

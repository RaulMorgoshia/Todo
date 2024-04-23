import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks, {super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].Name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallBack: (checkBoxState) {
              if (checkBoxState != null) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              }
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

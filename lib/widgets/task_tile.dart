import 'package:flutter/material.dart';
import 'package:todo_flutter2/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool) checkboxCallback;
  final Function() longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTile,
      required this.checkboxCallback,
     required this.longPressCallback
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (v) {
          print(v);
          checkboxCallback(v!);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter2/task_data.dart';
import 'package:todo_flutter2/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTile: task.name,
                isChecked: task.isDone,
                checkboxCallback: (v) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                });
          },
          itemCount: taskData.taskCount,
          shrinkWrap: true,
        );
      },
    );
  }
}

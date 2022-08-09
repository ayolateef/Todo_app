import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter2/models/task.dart';
import 'package:todo_flutter2/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);



@override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              //controller: newTaskTitle,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen:false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

// void addTaskCallback(String newTaskTitle) {
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/task_tile.dart';
import '../models/TasksController.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final TasksController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemBuilder: (context, index) {
          final task = _controller.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: () {
              setState(() {
                _controller.updateTask(task);
              });

              // task.toggleDone();
            },
            longPressCallback: () {
              _controller.deleteTask(task);
            },
          );
        },
        itemCount: _controller.tasks.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'data.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function(Task task) onDeleteClick;
  const TaskItem({super.key, required this.task, required this.onDeleteClick});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(task.content)),
        IconButton(onPressed: () {
          onDeleteClick(task);
        }, icon: const Icon(Icons.delete)),
        // IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      ],
    );
  }
}

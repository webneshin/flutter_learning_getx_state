import 'package:flutter/material.dart';

import 'data.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(task.content)),
        //todo Not Implemented
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      ],
    );
  }
}

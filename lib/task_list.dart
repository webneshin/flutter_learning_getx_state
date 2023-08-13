import 'package:flutter/cupertino.dart';
import 'package:flutter_learning_getx_state/data.dart';
import 'package:flutter_learning_getx_state/task_item.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task task) onItemDeleteClick;
  const TaskList({super.key, required this.tasks, required this.onItemDeleteClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: tasks.length,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        itemBuilder: (context, index) => TaskItem(task: tasks[index], onDeleteClick: onItemDeleteClick,),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learning_getx_state/task_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Task List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text('Task List Length: 12'),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.black.withOpacity(0.1), width: 1))),
          ),
          Expanded(child: TaskList()),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.black.withOpacity(0.1), width: 1))),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextField(
                      decoration: const InputDecoration(labelText: 'task content'),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}

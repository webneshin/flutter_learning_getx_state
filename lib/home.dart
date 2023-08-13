import 'package:flutter/material.dart';
import 'package:flutter_learning_getx_state/home_controller.dart';
import 'package:flutter_learning_getx_state/task_list.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          debugPrint('appbar builded');
          return Text("Counter is ${HomeController.to.counter}");
        }),
        actions: [
          IconButton(
              onPressed: () {
                HomeController.to.incrementCounter();
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          final logic=HomeController.to;
          debugPrint('Column builded');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Text('Task List Length: ${logic.tasks.length}'),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.black.withOpacity(0.1), width: 1))),
              ),
              Expanded(
                  child: TaskList(
                tasks: logic.tasks,
                onItemDeleteClick: (task) {
                  logic.deleteTask(task);
                },
              )),
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
                          controller: logic.textController,
                          decoration:
                              const InputDecoration(labelText: 'task content'),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          if (logic.textController.text.isNotEmpty) {
                            logic.insertTask(logic.textController.text);
                            logic.textController.clear();
                          }
                        },
                        icon: const Icon(Icons.send))
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

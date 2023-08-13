
import 'package:flutter/material.dart';
import 'package:flutter_learning_getx_state/data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  final textController = TextEditingController();

  final screenName = 'Home Screen';
  final tasks = <Task>[];
  int counter = 0;

  HomeController() {
    tasks.add(Task(0, 'First Task'));
    tasks.add(Task(0, 'Second Task'));
  }

  void deleteTask(Task task) {
    tasks.removeWhere((element) => element.id == task.id);
    update();
  }

  void insertTask(String content) {
    tasks.add(Task(tasks.length, content));
    update();
  }

  void incrementCounter() {
    counter += 1;
    update();
  }
}

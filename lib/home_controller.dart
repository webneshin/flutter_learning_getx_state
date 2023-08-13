
import 'package:flutter_learning_getx_state/data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  final screenName = 'Home Screen';
  final tasks = <Task>[].obs;
  final counter = 0.obs;

  HomeController() {
    tasks.add(Task(0, 'First Task'));
  }

  void deleteTask(Task task) {
    tasks.removeWhere((element) => element.id == task.id);
  }

  void insertTask(String content) {
    tasks.add(Task(tasks.length, content));
  }

  void incrementCounter() {
    counter.value += 1;
  }
}

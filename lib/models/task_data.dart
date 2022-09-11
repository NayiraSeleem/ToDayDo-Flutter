import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(name: 'Go to the market'),
    // Task(name: 'Do the homework'),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(
      Task(name: newTaskTitle),
    );
    //لازم نعملها لتقوم باخبار وتحديث كل الويدجيت
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

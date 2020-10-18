import 'dart:collection';

import 'package:flutter/foundation.dart';

class Task {
  Task({this.task, this.isDone = false});
  String task;
  bool isDone;
  void change() {
    isDone = !isDone;
  }
}

class TaskListData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(task: "Task 1"),
    Task(task: "Task 2"),
    Task(task: "Task 3"),
  ];
  void addTask(String task) {
    _taskList.add(Task(task: task, isDone: true));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.change();
    notifyListeners();
  }

  int getCount() {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void deleteTask(int index) {
    _taskList.remove(_taskList[index]);
    notifyListeners();
  }
}

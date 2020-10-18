import 'package:flutter/material.dart';
import 'checkBoxInd.dart';
import 'package:todoheee/models/Tasks.dart';
import 'package:provider/provider.dart';

//ignore: must_be_immutable
class CheckBoxList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskListData>(builder: (context, taskList, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return CheckBoxInd(
            text: taskList.taskList[index].task,
            checkStatus: taskList.taskList[index].isDone,
            checkCallBackFunction: (value) {
              taskList.updateTask(taskList.taskList[index]);
            },
            longPressCallback: () {
              taskList.deleteTask(index);
            },
          );
        },
        itemCount: taskList.getCount(),
      );
    });
  }
}

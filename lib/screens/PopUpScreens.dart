import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Tasks.dart';

//ignore: must_be_immutable
class ShowPopUpTask extends StatelessWidget {
  String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.blue),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  newTask = value;
                }
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (newTask.isNotEmpty) {
                  Provider.of<TaskListData>(context).addTask(newTask);
                  Navigator.pop(context);
                }
              },
              child: Text(
                "Add Task",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

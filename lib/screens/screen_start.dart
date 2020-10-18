import 'package:flutter/material.dart';
import 'package:todoheee/models/Tasks.dart';
import 'package:todoheee/widgets/checkBoxList.dart';
import 'PopUpScreens.dart';
import 'package:provider/provider.dart';
import '../models/Tasks.dart';

class MyStartingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: ShowPopUpTask(),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                    ),
                    radius: 35.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Just A Remainder",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "${Provider.of<TaskListData>(context).getCount()} Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: CheckBoxList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

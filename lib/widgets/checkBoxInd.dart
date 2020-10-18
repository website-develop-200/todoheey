import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CheckBoxInd extends StatelessWidget {
  CheckBoxInd({
    this.text,
    this.checkStatus,
    this.checkCallBackFunction,
    this.longPressCallback,
  });
  String text;
  bool checkStatus;
  Function checkCallBackFunction;
  Function longPressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        text,
        style: TextStyle(
          decoration:
              checkStatus ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkStatus,
        onChanged: checkCallBackFunction,
      ),
    );
  }
}

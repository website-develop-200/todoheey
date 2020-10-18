import 'package:flutter/material.dart';
import 'screens/screen_start.dart';
import 'package:provider/provider.dart';
import 'models/Tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskListData(),
      child: MaterialApp(
        home: MyStartingScreen(),
      ),
    );
  }
}

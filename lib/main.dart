import 'package:flutter/material.dart';
import 'package:todo_app/screen/main_task_screen.dart';
import 'package:todo_app/widgets/task_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
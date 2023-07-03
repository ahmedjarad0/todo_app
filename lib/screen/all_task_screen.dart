import 'package:flutter/material.dart';

import '../data/data_res.dart';
import '../widgets/task_widget.dart';
// import 'package:gsk_ui/todo_app/data/data_repo.dart';
// import 'package:gsk_ui/todo_app/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  // Function function2;
  AllTasksScreen(this.function, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasks[index],function);
        });
  }
}
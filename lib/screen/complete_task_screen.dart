import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/data/data_res.dart';
import 'package:todo_app/widgets/task_widget.dart';

class CompleteTaskScreen extends StatelessWidget {
 final  Function function;

  const CompleteTaskScreen(this.function, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tasks.where((element) => element.isComplete).isEmpty
        ? Lottie.asset('asset/images/img.json')
        : ListView.builder(
            itemCount: tasks.where((element) => element.isComplete).length,
            itemBuilder: (context, index) {
              return TaskWidget(
                  tasks.where((element) => element.isComplete).toList()[index],
                  function);
            });
  }
}

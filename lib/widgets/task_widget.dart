import 'package:flutter/material.dart';
import 'package:todo_app/models/task_response.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget(this.taskResponse,this.function, {Key? key}) : super(key: key);
  final TaskResponse taskResponse;
  final Function function ;

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: CheckboxListTile(
            value: taskResponse.isComplete,
            onChanged: (value) {
              function(taskResponse);
            },
            title: Text(taskResponse.title ?? '')),
    );
  }
}

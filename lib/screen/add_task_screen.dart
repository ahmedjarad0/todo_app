import 'package:flutter/material.dart';
import 'package:todo_app/data/data_res.dart';
import 'package:todo_app/models/task_response.dart';

class AddTaskScreen extends StatelessWidget {
   AddTaskScreen(this.function ,{Key? key}) : super(key: key);
String content =  '';
Function function ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: Column(
        children: [
           TextField(
            onChanged: (value) {
              content = value;

            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {
            tasks.add(TaskResponse(title: content));
            function();
            Navigator.pop(context);
          }, child: const Text('Add Task')),
        ],
      ),
    );
  }
}

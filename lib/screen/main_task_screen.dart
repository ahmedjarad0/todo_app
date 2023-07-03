import 'package:flutter/material.dart';
import 'package:todo_app/data/data_res.dart';
import 'package:todo_app/models/task_response.dart';
import 'package:todo_app/screen/add_task_screen.dart';
import 'package:todo_app/screen/all_task_screen.dart';
import 'package:todo_app/screen/complete_task_screen.dart';
import 'package:todo_app/screen/incomplete_task_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  initTabBar() {
    tabController = TabController(length: 3, vsync: this);
  }

  checkCompleted(TaskResponse taskResponse) {
    int index = tasks.indexOf(taskResponse);
    tasks[index].isComplete = !tasks[index].isComplete;
    setState(() {});
  }
setAfterAdding(){
    setState(() {

    });
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTabBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        bottom: TabBar(controller: tabController, tabs: const [
          Tab(icon: Icon(Icons.list)),
          Tab(
            icon: Icon(Icons.done),
          ),
          Tab(
            icon: Icon(Icons.cancel),
          ),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        AllTasksScreen(checkCompleted),
        CompleteTaskScreen(checkCompleted),
        InCompleteTaskScreen(checkCompleted),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  AddTaskScreen(setAfterAdding),
                ));
          },
          child: Icon(Icons.add)),
    );
  }
}

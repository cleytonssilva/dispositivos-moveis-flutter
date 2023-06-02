import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:minha_agenda/controllers/home_controller.dart';
import 'package:minha_agenda/services/task_service.dart';

class ListTasks extends StatefulWidget{
  const ListTasks({Key? key});

  @override
  State<ListTasks> createState()=> _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  final controller = HomeController(
    taskService: TaskService(),
  );
  List tasks;

  _ListTasksState() : tasks = [];

  @override
  void initState(){
    tasks = controller.getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(_,index){
        return Text(tasks[index]);
      },
      itemCount: tasks.length,
      );
  }
}
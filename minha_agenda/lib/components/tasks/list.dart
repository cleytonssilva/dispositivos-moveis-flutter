import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minha_agenda/components/subtitle_widget.dart';
import 'package:minha_agenda/components/title_widget.dart';
import 'package:minha_agenda/controllers/home_controller.dart';
import 'package:minha_agenda/models/task_model.dart';
import 'package:minha_agenda/services/category_service.dart';
import 'package:minha_agenda/services/task_service.dart';
import 'package:minha_agenda/shared/styles.dart';

class ListTasks extends StatefulWidget{
  const ListTasks({Key? key}) : super(key: key);

  @override
  State<ListTasks> createState()=> _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  final controller = HomeController(
    taskService: TaskService(
    categoryService: CategoryService(),
    ),
  );
  List<Task> tasks;

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
        return Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(tasks[index].category.color),
            ),
            ),
            Expanded(
              child: Column(
              children: [
                TitleDefault(title: tasks[index].title),
                SubtitleDefault(title: tasks[index].description)
              ])
            ),
            Checkbox(
            side: const BorderSide(
              color: AppStyle.primaryColor,
              width: 2,
            ),  
              value: tasks[index].finished,
              onChanged: (value){}),
            ],
        );
      
      },
      itemCount: tasks.length,
      );
  }
}
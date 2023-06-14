import 'package:flutter/material.dart';
import 'package:minha_agenda/components/subtitle_widget.dart';
import '../../../components/title_widget.dart';
import '../../home/controllers/home_controller.dart';
import '../models/task_model.dart';
import '../../category/services/category_service.dart';
import '../services/task_service.dart';
import '../../../shared/styles.dart';


import '../../home/controllers/home_controller.dart';
import '.././services/task_service.dart';
import '../../../shared/constants.dart';



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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleDefault(title: AppConstants.nextTasks),
        Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (_, index) {
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleDefault(title: tasks[index].title),
                          SubtitleDefault(title: tasks[index].description),
                  ],
                      ),
                    ),
                  ),
            Checkbox(
            side: const BorderSide(
                      color: AppStyle.primaryColor,
                      width: 2,
                    ),
                    activeColor: AppStyle.primaryColor,
                    value: tasks[index].finished,
                    onChanged: (value) {
                      setState(() {
                        tasks[index] = tasks[index].copyWith(finished: value);
                     });
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
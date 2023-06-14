import '../../category/models/category_model.dart';

class Task {
  final String title;
  final String description;
  final bool finished;
  final Category category;

  Task({
    required this.title,
    required this.description,
    required this.category,
    bool? finished,
  }) : finished = finished ?? false;
  
  copyWith({
    String? title,
    String? description,
    Category? category,
    bool? finished,
  })
   => 
      Task(
        category: category ?? this.category,
        title: title ?? this.title,
        description: description ?? this.description,
        finished: finished ?? this.finished,
      );  
}


import 'category_model.dart';

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
}

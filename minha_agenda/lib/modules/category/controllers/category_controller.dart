
import 'package:minha_agenda/modules/category/models/category_model.dart';
import '../services/category_service.dart';

class CategoryController {
  final CategoryService _categoryService;

  CategoryController({required CategoryService categoryService})
      : _categoryService = categoryService;

  List<Category> getCategories () => _categoryService.getCategories();


}


import 'package:flutter/material.dart';
import 'package:minha_agenda/components/image_header_default.dart';
import 'package:minha_agenda/components/title_widget.dart';
import 'package:minha_agenda/modules/category/controllers/category_controller.dart';
import '../services/category_service.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {
   final CategoryController _categoryController = CategoryController(
     categoryService: CategoryService(),
   );
  final List _categories = [];

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const ImageHeaderDefault(),
      ),
      body: Center(
        child: Column(
          children: [
            const TitleDefault(title: 'Categorias'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:minha_agenda/components/image_header_default.dart';
import 'package:minha_agenda/components/title_widget.dart';
import 'package:minha_agenda/controllers/category_controller.dart';
import 'package:minha_agenda/services/category_service.dart';

import 'package:minha_agenda/shared/styles.dart';

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
      body: Expanded(
        child: Column(
          children: [
            const TitleDefault(title: 'Categorias'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Nome',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0, left: 16.0),
                        child: Text(
                          'Cor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Ação',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: AppStyle.gray,
                    height: 1,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  ListView.builder(
                      itemCount: _categories.length,
                      itemBuilder: (_, index) {
                        return Row(
                          children: [
                            Expanded(
                              child: Text(_categories[index].name),
                            ),
                            Container(
                              color: Color(_categories[index].color),
                              height: 16,
                              width: 16,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.edit),
                                Icon(Icons.delete),
                              ],
                            )
                          ],
                        );
                      })
                ],
              ),
            ),
          ],
        ),
        
    ),
      );
    
  }
}

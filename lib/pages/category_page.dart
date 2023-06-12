import 'package:flutter/material.dart';
import 'package:pet_shop/view_model/categories_list.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          showCategoryList(), //Category List like Cat,Dog,Bird and others
        ),
      ),
    );
  }
}

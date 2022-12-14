import 'package:flutter/material.dart';
import './models/dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(5),
        children: [
          ...(DUMMY_CATEGORIES).map((catdata) {
            return CategoryItem(catdata.id, catdata.title, catdata.color);
          }).toList()
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10),
      ),
    );
  }
}

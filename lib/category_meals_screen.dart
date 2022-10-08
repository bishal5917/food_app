import 'package:flutter/material.dart';
import './models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(catTitle as String),
        ),
        body: ListView.builder(
          itemCount: categoryMeals.length,
          prototypeItem: ListTile(
            title: Text("OK"),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(categoryMeals[index].title),
            );
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/meal_item.dart';
import 'package:food_app/models/meal.dart';
import './models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  List<Meal> availableMeal;

  CategoryMealsScreen(this.availableMeal);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final categoryMeals = availableMeal.where((meal) {
      return meal.categories.contains(catId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(catTitle as String),
        ),
        body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
                categoryMeals[index].id,
                categoryMeals[index].title,
                categoryMeals[index].imageUrl,
                categoryMeals[index].duration,
                categoryMeals[index].complexity,
                categoryMeals[index].affordability);
          },
        ));
  }
}

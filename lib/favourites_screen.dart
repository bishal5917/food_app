import 'package:flutter/material.dart';
import 'package:food_app/meal_item.dart';
import 'package:food_app/models/meal.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favMeals;

  FavouritesScreen(this.favMeals);

  @override
  Widget build(BuildContext context) {
    if (favMeals.length == 0) {
      return Center(child: Text("None Marked as Favourite"));
    } else {
      return ListView.builder(
        itemCount: favMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
              favMeals[index].id,
              favMeals[index].title,
              favMeals[index].imageUrl,
              favMeals[index].duration,
              favMeals[index].complexity,
              favMeals[index].affordability);
        },
      );
    }
  }
}

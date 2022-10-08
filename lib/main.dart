import 'package:flutter/material.dart';
import 'package:food_app/categories_screen.dart';
import 'package:food_app/category_meals_screen.dart';
import 'package:food_app/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CategoriesScreen(),
        routes: {
          '/category_meals':(ctx)=>CategoryMealsScreen(),
          '/meal_detail':(ctx)=>MealDetailScreen()
        },);
  }
}

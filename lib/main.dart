import 'package:flutter/material.dart';
import 'package:food_app/categories_screen.dart';
import 'package:food_app/category_meals_screen.dart';
import 'package:food_app/filters_screen.dart';
import 'package:food_app/meal_detail_screen.dart';
import 'package:food_app/models/dummy_data.dart';
import 'package:food_app/models/meal.dart';
import 'package:food_app/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    "gluten": false,
    "lactose": false,
    "vegan": false,
    "vegetarian": false,
  };

  List<Meal> availableMeals = DUMMY_MEALS;

  void updateFilters(Map<String, bool> newVals) {
    setState(() {
      filters = newVals;
      availableMeals = DUMMY_MEALS.where((meal) {
        if (filters['gluten'] == true && meal.isGlutenFree == false) {
          return false;
        }
        if (filters['lactose'] == true && meal.isLactoseFree == false) {
          return false;
        }
        if (filters['vegan'] == true && meal.isVegan == false) {
          return false;
        }
        if (filters['vegetarian'] == true && meal.isVegetarian == false) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        '/category_meals': (ctx) => CategoryMealsScreen(availableMeals),
        '/meal_detail': (ctx) => MealDetailScreen(),
        '/filters': (ctx) => FiltersScreen(filters, updateFilters)
      },
    );
  }
}

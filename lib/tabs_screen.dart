import 'package:flutter/material.dart';
import 'package:food_app/categories_screen.dart';
import 'package:food_app/favourites_screen.dart';
import 'package:food_app/main_drawer.dart';
import 'package:food_app/models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favMeals;

  TabsScreen(this.favMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
            title: Text('FoodGeeks'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: "Categories",
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: "Favourites",
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            CategoriesScreen(),
            FavouritesScreen(widget.favMeals)
          ]),
        ));
  }
}

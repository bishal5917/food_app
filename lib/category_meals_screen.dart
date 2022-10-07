import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(title: Text(catTitle as String)),
      body: Center(child: Text('The Recipes for the category')),
    );
  }
}

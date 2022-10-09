import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool glutenFree = false;
  bool lactoseFree = false;
  bool vegan = false;
  bool vegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Apply Filters")),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                  title: Text('Gluten Free'),
                  value: glutenFree,
                  onChanged: (newVal) {
                    setState(() {
                      glutenFree = newVal;
                    });
                  }),
              SwitchListTile(
                  title: Text('Lactose Free'),
                  value: lactoseFree,
                  onChanged: (newVal) {
                    setState(() {
                      lactoseFree = newVal;
                    });
                  }),
              SwitchListTile(
                  title: Text('Vegan'),
                  value: vegan,
                  onChanged: (newVal) {
                    setState(() {
                      vegan = newVal;
                    });
                  }),
              SwitchListTile(
                  title: Text('Vegetarian'),
                  value: vegetarian,
                  onChanged: (newVal) {
                    setState(() {
                      vegetarian = newVal;
                    });
                  })
            ],
          ))
        ],
      ),
    );
  }
}

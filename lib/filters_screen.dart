import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  final Function updateFilters;
  final Map<String, bool> initFilterVals;

  FiltersScreen(this.initFilterVals, this.updateFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool glutenFree = false;
  bool lactoseFree = false;
  bool vegan = false;
  bool vegetarian = false;

  @override
  void initState() {
    glutenFree = widget.initFilterVals['gluten'] as bool;
    lactoseFree = widget.initFilterVals['lactose'] as bool;
    vegan = widget.initFilterVals['vegan'] as bool;
    vegetarian = widget.initFilterVals['vegetarian'] as bool;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Apply Filters")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          final updatedVals = {
            "gluten": glutenFree,
            "lactose": lactoseFree,
            "vegan": vegan,
            "vegetarian": vegetarian,
          };
          widget.updateFilters(updatedVals);
          Navigator.of(context).pushNamed('/');
        },
      ),
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

import 'package:flutter/material.dart';
import './models/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final mealDetail = DUMMY_MEALS.firstWhere((mel) => mel.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(mealDetail.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                mealDetail.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Ingredients",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              width: 350,
              child: ListView.builder(
                itemCount: mealDetail.ingredients.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 216, 156, 151),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        mealDetail.ingredients[index],
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "STEPS",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              width: 350,
              child: ListView.builder(
                itemCount: mealDetail.steps.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        child: Text("#${index + 1}"),
                        backgroundColor: Color.fromARGB(255, 231, 229, 229)),
                    title: Text(
                      mealDetail.steps[index],
                      style: TextStyle(fontFamily: 'baloo'),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(this.title, this.imageUrl, this.duration, this.complexity,
      this.affordability);

  void selectMeal() {}

  String get ComplexityText {
    if (complexity == Complexity.Simple) {
      return "Simple";
    }
    if (complexity == Complexity.Challenging) {
      return "Challenging";
    }
    if (complexity == Complexity.Hard) {
      return "Hard";
    }
    return "NaN";
  }

  String get affordabilityText {
    if (affordability == Affordability.Affordable) {
      return "Affordable";
    }
    if (affordability == Affordability.Pricey) {
      return "Pricey";
    }
    if (affordability == Affordability.Luxurious) {
      return "Luxurious";
    }
    return "NaN";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.all(10),
                    color: Colors.black45,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text("${duration} min"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work_outline),
                        SizedBox(
                          width: 5,
                        ),
                        Text(ComplexityText),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(affordabilityText),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals_app/model/meals_model.dart';

class MealsDetails extends StatelessWidget {
  const MealsDetails({super.key, required this.meal});

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          meal.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(17, 109, 110, 1),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Ingredients',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          for (final ingredients in meal.ingredients)
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '•  $ingredients',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.tealAccent,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Steps',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          for (final steps in meal.steps)
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 4),
              child: Text(
                '•  $steps',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.tealAccent,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

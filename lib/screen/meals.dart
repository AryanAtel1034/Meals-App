import 'package:flutter/material.dart';
import 'package:meals_app/model/meals_model.dart';
import 'package:meals_app/screen/meal_details.dart';
import 'package:meals_app/widgets/meal_items.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.meals, required this.title});
  final String title;
  final List<MealModel> meals;

   void selectMeal(BuildContext context, MealModel meal) {

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>  MealsDetails(meal: meal,)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) =>MealItems(meal: meals[index], onSelectMeal: (meal){

        selectMeal(context, meal);

      })
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh.. Nothing here!!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting different category',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromRGBO(17, 109, 110, 1),
      ),
      body: content,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/model/meals_model.dart';
import 'package:meals_app/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItems extends StatelessWidget {
  const MealItems({super.key, required this.meal, required this.onSelectMeal});

  final MealModel meal;
  final void Function( MealModel meal) onSelectMeal;

  String get complexityTime {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordability {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 3,
        child: InkWell(
          onTap: (){
            onSelectMeal(meal);
          },
          child: Column(
            children: [
              Stack(
                children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    fit: BoxFit.cover,
                    height: 230,
                    width: double.infinity,
                    image: NetworkImage(
                      meal.imageUrl,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 200,
                    left: 10,
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                width: double.infinity,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MealTraits(
                      icon: Icons.schedule,
                      label: '${meal.duration} min',
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    MealTraits(
                      icon: Icons.work,
                      label: complexityTime,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    MealTraits(
                      icon: Icons.attach_money,
                      label: affordability,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

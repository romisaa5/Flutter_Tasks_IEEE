import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/home/data/models/recipes_by_category/meal.dart';
import 'package:food_recipe_app/core/widgets/custom_favorite_icon.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key, required this.meal});
final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          75.ph,
          Text(
            meal.strMeal??'',
            style: TextAppTheme.textStyle14.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Time',
              style: TextAppTheme.textStyle12.copyWith(color: Colors.black54),
            ),
            subtitle: Text(
              '30 minutes',
              style: TextAppTheme.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: CustomFavoriteIcon(
              id:meal.idMeal??'' ,
              title: meal.strMeal??'',
              imageUrl: meal.strMealThumb??'',
            ),
          ),
        ],
      ),
    );
  }
}

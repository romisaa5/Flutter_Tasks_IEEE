import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:food_recipe_app/features/home/data/models/recipes_by_category/meal.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/card_body.dart';

class FoodRecipeCard extends StatelessWidget {
  const FoodRecipeCard({super.key, required this.foodRecipe});
  final Meal foodRecipe;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 30.h,
            child: Container(
              height: 176.h,
              width: 150.w,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(12.0.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const CardBody(),
            ),
          ),
          Positioned(
            top: -3,
            left: 40.w,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: foodRecipe.strMealThumb ?? '',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                  placeholder:
                      (context, url) => Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                  errorWidget:
                      (context, url, error) => Icon(
                        Icons.broken_image,
                        size: 40,
                        color: Colors.grey,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

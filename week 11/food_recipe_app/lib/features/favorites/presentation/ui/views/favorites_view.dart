import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/favorites/presentation/ui/widgets/custom_favorite_card.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: Column(
        spacing: 10.h,
        children: [
          20.ph,
          Text(
            'Your Favorite Recipes',
            style: TextAppTheme.textStyle18,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.0.h,
                childAspectRatio: 1,
              ),
              itemCount: 10, // Replace with your favorite recipes count
              itemBuilder: (context, index) {
                return CustomFavoriteCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

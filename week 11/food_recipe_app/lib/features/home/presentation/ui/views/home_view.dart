import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/food_recipe_card.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/welcome_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: ListView(
        children: [
          20.ph,
          WelcomeContainer(),
          20.ph,
          Text('Popular Recipes', style: TextAppTheme.textStyle18),
          20.ph,
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.7,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return FoodRecipeCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

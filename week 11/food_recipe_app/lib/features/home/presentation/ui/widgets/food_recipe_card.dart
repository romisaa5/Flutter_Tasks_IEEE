import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/card_body.dart';

class FoodRecipeCard extends StatelessWidget {
  const FoodRecipeCard({super.key});

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
              child: CardBody(),
            ),
          ),
          Positioned(
            top: -3,
            left: 40.w,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/images/Image.png',
                width: 90.w,
                height: 90.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

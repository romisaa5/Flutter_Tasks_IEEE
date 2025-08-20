import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FoodRecipeSkeletonGrid extends StatelessWidget {
  const FoodRecipeSkeletonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 0.8,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Skeletonizer(
            child: SizedBox(
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
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            75.ph,
                            Container(
                              height: 9.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.grey.shade100,
                              ),
                            ),
                            20.ph,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.grey.shade100,
                              ),
                              height: 5.h,
                              width: 40.w,
                            ),
                            5.ph,
                            Container(
                              height: 8.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -3,
                    left: 40.w,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: AppColors.lightGreyColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

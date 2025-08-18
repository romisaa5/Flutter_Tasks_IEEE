import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_router.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:go_router/go_router.dart';

class CustomFavoriteCard extends StatelessWidget {
  const CustomFavoriteCard({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.detailsview, extra: 'id');
      },
      child: SizedBox(
        height: 200.h,
        width: 200.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset('assets/images/food.png', fit: BoxFit.cover),
              ),

              Positioned.fill(
                child: Container(color: Colors.black.withValues(alpha: .5)),
              ),
              Positioned(
                right: 10,
                bottom: 20,
                child: IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.white),
                  onPressed: onPressed,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 10,
                right: 10,
                child: Text(
                  'Delicious Pasta Recipe',
                  style: TextAppTheme.textStyle14.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Text(
                  'By Chef John',
                  style: TextAppTheme.textStyle12.copyWith(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_router.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/favorites/data/models/favorite_recipe.dart';
import 'package:food_recipe_app/features/favorites/presentation/manager/favorites/favorites_cubit.dart';
import 'package:food_recipe_app/core/widgets/custom_favorite_icon.dart';
import 'package:go_router/go_router.dart';

class CustomFavoriteCard extends StatelessWidget {
  const CustomFavoriteCard({super.key, this.onPressed, required this.recipe});
  final void Function()? onPressed;
  final FavoriteRecipe recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.detailsview, extra: recipe.id).then(
          (_) {
            context.read<FavoritesCubit>().loadFavorites();
          },
        );
      },

      child: SizedBox(
        height: 200.h,
        width: 200.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(recipe.imageUrl, fit: BoxFit.cover),
              ),
              Positioned.fill(
                child: Container(color: Colors.black.withValues(alpha: .5)),
              ),
              Positioned(
                right: 10,
                bottom: 20,
                child: CustomFavoriteIcon(
                  id: recipe.id,
                  imageUrl: recipe.imageUrl,
                  title: recipe.title,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 10,
                right: 10,
                child: Text(
                  recipe.title,
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

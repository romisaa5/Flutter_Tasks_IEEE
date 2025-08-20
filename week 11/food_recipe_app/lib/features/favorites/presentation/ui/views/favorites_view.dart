import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/favorites/presentation/manager/favorites/favorites_cubit.dart';
import 'package:food_recipe_app/features/favorites/presentation/ui/widgets/custom_favorite_card.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  void initState() {
    super.initState();
    context.read<FavoritesCubit>().loadFavorites();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<FavoritesCubit>().loadFavorites();
  }

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
            child: BlocBuilder<FavoritesCubit, FavoritesState>(
              builder: (context, state) {
                if (state is FavoritesLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is FavoritesLoaded) {
                  if (state.favorites.isEmpty) {
                    return const Center(child: Text("No favorites yet"));
                  }
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.0.h,
                      childAspectRatio: 1,
                    ),
                    itemCount: state.favorites.length,
                    itemBuilder: (context, index) {
                      final meal = state.favorites[index];
                      return CustomFavoriteCard(recipe: meal);
                    },
                  );
                } else if (state is FavoritesError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}

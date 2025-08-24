import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/features/favorites/data/models/favorite_recipe.dart';
import 'package:food_recipe_app/features/favorites/presentation/manager/favorites/favorites_cubit.dart';

class CustomFavoriteIcon extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CustomFavoriteIcon({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        bool isFavorite = false;

        if (state is FavoritesLoaded) {
          isFavorite = state.favorites.any((fav) => fav.id == id);
        }

        return CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.white,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 18.0,
              color: isFavorite ? Colors.red : Colors.black54,
            ),
            onPressed: () {
              context.read<FavoritesCubit>().toggleFavorite(
                FavoriteRecipe(id: id, title: title, imageUrl: imageUrl),
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/core/services/favorite_meals_service.dart';
import 'package:food_recipe_app/features/favorites/data/models/favorite_recipe.dart';
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final SqfliteDb db;

  FavoritesCubit(this.db) : super(FavoritesInitial());

  Future<void> loadFavorites() async {
    emit(FavoritesLoading());
    try {
      final meals = await db.getAllFavoritesMeals();
      emit(FavoritesLoaded(meals));
    } catch (e) {
      emit(FavoritesError("Error loading favorites"));
    }
  }

  Future<void> toggleFavorite(FavoriteRecipe meal) async {
    final isFav = await db.isFavorite(meal.id);
    if (isFav) {
      await db.deleteFavorite(meal.id);
    } else {
      await db.insertFavorite(meal);
    }
    await loadFavorites();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/core/networking/api_error_handler.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';
import 'package:food_recipe_app/features/home/data/models/recipes_by_category/meal.dart';
import 'package:food_recipe_app/features/home/data/repos/get_recipes_by_category_repo.dart';
part 'get_recipes_state.dart';

class GetRecipesCubit extends Cubit<GetRecipesState> {
  GetRecipesCubit(this.getRecipesByCategoryRepo) : super(GetRecipesInitial());
  final GetRecipesByCategoryRepo getRecipesByCategoryRepo;
  Future<void> fetchRecipesByCategory(String category) async {
    emit(GetRecipesLoading());
    try {
      final recipes = await getRecipesByCategoryRepo.getRecipesByCategory(
        category,
      );
      if (recipes.isEmpty) {
        emit(GetRecipesEmpty());
      } else {
        emit(GetRecipesSuccess(recipes));
      }
    } catch (e) {
      final error = ApiErrorHandler.handleError(e);
      emit(GetRecipesFailure(error));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/core/networking/api_error_handler.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';
import 'package:food_recipe_app/features/home/data/models/meal_details/meal.dart';
import 'package:food_recipe_app/features/home/data/repos/meal_details_repo.dart';
part 'meal_details_state.dart';

class MealDetailsCubit extends Cubit<MealDetailsState> {
  MealDetailsCubit(this.mealDetailsRepo) : super(MealDetailsInitial());
  final MealDetailsRepo mealDetailsRepo;
  Future<void> fetchMealDetails(String mealId) async {
    emit(MealDetailsLoading());
    try {
      final mealDetails = await mealDetailsRepo.getMealDetails(mealId);
      emit(MealDetailsSuccess(meal: mealDetails));
    } catch (e) {
      final errorModel = ApiErrorHandler.handleError(e);
      emit(MealDetailsFailure(errorModel: errorModel));
    }
  }
}

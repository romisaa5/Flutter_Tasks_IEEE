import 'package:dio/dio.dart';
import 'package:food_recipe_app/core/utils/api_services.dart';
import 'package:food_recipe_app/features/home/data/models/meal_details/meal.dart';

class MealDetailsRepo {
  final ApiServices apiServices;

  MealDetailsRepo({required this.apiServices});

  Future<MealDetails> getMealDetails(String mealId) async {
    final Response response = await apiServices.getRecipeDetails(mealId);
    final dynamic data = response.data;
    return MealDetails.fromJson(data['meals'][0]);
  }
}
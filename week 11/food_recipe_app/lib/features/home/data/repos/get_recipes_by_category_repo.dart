import 'package:food_recipe_app/core/utils/api_services.dart';
import 'package:food_recipe_app/features/home/data/models/recipes_by_category/meal.dart';

class GetRecipesByCategoryRepo {
  final ApiServices apiServices;
  GetRecipesByCategoryRepo({required this.apiServices});
  Future<List<Meal>> getRecipesByCategory(String category) async {
    final response = await apiServices.getRecipesByCategory(category);
    final dynamic data = response.data;
    List<Meal> meals = [];
    for (var meal in data['meals']) {
      meals.add(Meal.fromJson(meal));
    }
    return meals;
  }
}

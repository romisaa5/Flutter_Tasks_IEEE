import 'package:dio/dio.dart';
import 'package:food_recipe_app/core/utils/api_services.dart';
import 'package:food_recipe_app/features/home/data/models/categories/category.dart';

class GetAllCategoriesRepo {
  final ApiServices apiServices;
  GetAllCategoriesRepo({required this.apiServices});
  Future<List<FoodCategory>> getAllCategories() async {
    final Response response = await apiServices.getCategories();

    final dynamic data = response.data;
    List<FoodCategory> categories = [];
    for (var category in data['categories']) {
      categories.add(FoodCategory.fromJson(category));
    }
    return categories;
  }
}

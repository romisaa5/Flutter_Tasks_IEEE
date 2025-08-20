import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices( {required this.dio});
  String baseUrl = 'https://www.themealdb.com/api/json/v1/1/';
  Future<Response> getCategories() async {
    try {
      final response = await dio.get('$baseUrl/categories.php');
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getRecipesByCategory(String category) async {
    try {
      final response = await dio.get('$baseUrl/filter.php?c=$category');
      return response;
    } catch (e) {
      rethrow;
    }
  }
  Future<Response> getRecipeDetails(String id) async {
    try {
      final response = await dio.get('$baseUrl/lookup.php?i=$id');
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

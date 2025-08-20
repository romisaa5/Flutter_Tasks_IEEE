import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';
import 'package:food_recipe_app/core/networking/local_status_code.dart';

class ApiErrorFactory {
   static ApiErrorModel defaultError() {
     return ApiErrorModel(
       message: 'An unexpected error occurred. Please try again later.',
       statusCode: LocalStatusCode.defaultError,
       icon: Icons.error,
     );
   }
}
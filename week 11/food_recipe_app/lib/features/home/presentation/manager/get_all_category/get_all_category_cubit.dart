import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/core/networking/api_error_handler.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';
import 'package:food_recipe_app/features/home/data/models/categories/category.dart';
import 'package:food_recipe_app/features/home/data/repos/get_all_categories_repo.dart';
part 'get_all_category_state.dart';

class GetAllCategoryCubit extends Cubit<GetAllCategoryState> {
  GetAllCategoryCubit(this.getAllCategoriesRepo)
    : super(GetAllCategoryInitial());
  final GetAllCategoriesRepo getAllCategoriesRepo;
  Future<void> fetchAllCategories() async {
    emit(GetAllCategoryLoading());
    try {
      final categories = await getAllCategoriesRepo.getAllCategories();
      if (categories.isEmpty) {
        emit(
          GetAllCategoryFailure(
            ApiErrorModel(
              icon: Icons.warning,
              message: 'No categories found',
              statusCode: 404,
            ),
          ),
        );
      } else {
        emit(GetAllCategorySuccess(categories));
      }
    } catch (e) {
      final errorModel = ApiErrorHandler.handleError(e);
      emit(
        GetAllCategoryFailure(errorModel),
      ); 
    }
  }
}

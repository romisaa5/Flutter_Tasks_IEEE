part of 'get_all_category_cubit.dart';

@immutable
sealed class GetAllCategoryState {}

final class GetAllCategoryInitial extends GetAllCategoryState {}

final class GetAllCategoryLoading extends GetAllCategoryState {}

final class GetAllCategorySuccess extends GetAllCategoryState {
  final List<FoodCategory> categories;
  GetAllCategorySuccess(this.categories);
}

final class GetAllCategoryFailure extends GetAllCategoryState {

  final ApiErrorModel errorModel;
  GetAllCategoryFailure( this.errorModel);
}

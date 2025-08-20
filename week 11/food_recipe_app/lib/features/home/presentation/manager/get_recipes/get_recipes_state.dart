part of 'get_recipes_cubit.dart';

@immutable
sealed class GetRecipesState {}

final class GetRecipesInitial extends GetRecipesState {}

final class GetRecipesLoading extends GetRecipesState {}

final class GetRecipesSuccess extends GetRecipesState {
  final List<Meal> meals;
  GetRecipesSuccess(this.meals);
}

final class GetRecipesFailure extends GetRecipesState {
  final ApiErrorModel errorModel;
  GetRecipesFailure(this.errorModel);
}

final class GetRecipesEmpty extends GetRecipesState {}

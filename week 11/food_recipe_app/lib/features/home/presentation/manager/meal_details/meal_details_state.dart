part of 'meal_details_cubit.dart';

@immutable
sealed class MealDetailsState {}

final class MealDetailsInitial extends MealDetailsState {}

final class MealDetailsLoading extends MealDetailsState {}

final class MealDetailsSuccess extends MealDetailsState {
  final MealDetails meal;

  MealDetailsSuccess({required this.meal});
}
final class MealDetailsFailure extends MealDetailsState {
final ApiErrorModel errorModel;
  MealDetailsFailure({required this.errorModel});

}

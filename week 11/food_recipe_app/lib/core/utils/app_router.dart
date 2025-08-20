import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/core/utils/api_services.dart';
import 'package:food_recipe_app/features/home/data/repos/meal_details_repo.dart';
import 'package:food_recipe_app/features/home/presentation/manager/meal_details/meal_details_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/ui/views/meal_details_view.dart';
import 'package:food_recipe_app/features/nav_bar/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:food_recipe_app/features/nav_bar/presentation/ui/views/nav_bar.dart';
import 'package:food_recipe_app/features/onboard/presentation/views/onboard_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const navBar = '/navBar';
  static const detailsview = '/detailsview';
  static const onboarding = '/onboarding';

  static GoRouter getRouter({required bool isOnBoarded}) {
    return GoRouter(
      initialLocation: isOnBoarded ? navBar : onboarding,
      routes: [
        GoRoute(
          path: onboarding,
          builder: (context, state) => const OnboardView(),
        ),
        GoRoute(
          path: navBar,
          builder:
              (context, state) => BlocProvider(
                create: (context) => NavbarCubit(),
                child: const NavBar(),
              ),
        ),
        GoRoute(
          path: detailsview,
          builder: (context, state) {
            final mealId = state.extra as String;
            return BlocProvider(
              create: (context) => MealDetailsCubit(
                MealDetailsRepo(apiServices: ApiServices(dio: Dio())),
              )
                ..fetchMealDetails(mealId),
              child: MealDetailsView(mealId: mealId),
            );
          },
        ),
      ],
    );
  }
}

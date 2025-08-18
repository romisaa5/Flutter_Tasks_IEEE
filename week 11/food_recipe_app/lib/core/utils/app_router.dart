import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_app/features/home/presentation/ui/views/meal_details_view.dart'
    show MealDetailsView;
import 'package:food_recipe_app/features/nav_bar/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:food_recipe_app/features/nav_bar/presentation/ui/views/nav_bar.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final navBar = '/navBar';
  static final detailsview = '/detailsview';

  static GoRouter getRouter() {
    return GoRouter(
      initialLocation: navBar,
      routes: [
        GoRoute(
          path: navBar,
          builder:
              (context, state) => BlocProvider(
                create: (context) => NavbarCubit(),
                child: NavBar(),
              ),
        ),

        GoRoute(
          path: detailsview,
          builder: (context, state) {
            final mealId = state.extra as String;
            return MealDetailsView(mealId: mealId);
          },
        ),
      ],
    );
  }
}

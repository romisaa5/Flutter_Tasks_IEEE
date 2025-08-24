import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/services/favorite_meals_service.dart';
import 'package:food_recipe_app/core/utils/app_router.dart';
import 'package:food_recipe_app/features/favorites/presentation/manager/favorites/favorites_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isOnBoarded = prefs.getBool('isOnBoarded') ?? false;

  runApp(FoodRecipeApp(isOnBoarded: isOnBoarded));
}

class FoodRecipeApp extends StatelessWidget {
  final bool isOnBoarded;
  const FoodRecipeApp({super.key, required this.isOnBoarded});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => FavoritesCubit(SqfliteDb())..loadFavorites(),
          child: MaterialApp.router(
            title: 'Food Recipe App',
            routerConfig: AppRouter.getRouter(isOnBoarded: isOnBoarded),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}

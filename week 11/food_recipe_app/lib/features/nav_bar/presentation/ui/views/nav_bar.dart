import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_recipe_app/core/utils/api_services.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';

import 'package:food_recipe_app/features/favorites/presentation/ui/views/favorites_view.dart';
import 'package:food_recipe_app/features/home/data/repos/get_all_categories_repo.dart';
import 'package:food_recipe_app/features/home/data/repos/get_recipes_by_category_repo.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_all_category/get_all_category_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_recipes/get_recipes_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/ui/views/home_view.dart';
import 'package:food_recipe_app/features/nav_bar/presentation/manager/navbar_cubit/navbar_cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  static List<Widget> views = [
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => GetAllCategoryCubit(
                GetAllCategoriesRepo(apiServices: ApiServices(dio: Dio())),
              ),
        ),
        BlocProvider(
          create:
              (context) => GetRecipesCubit(
                GetRecipesByCategoryRepo(apiServices: ApiServices(dio: Dio())),
              ),
        ),
      ],
      child: HomeView(),
    ),
     FavoritesView(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, index) {
        return Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {},
            backgroundColor: AppColors.primaryColor,
            child: Icon(Icons.add, color: Colors.white, size: 24.sp),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: views[index is NavbarUpdate ? index.currentIndex : 0],
          bottomNavigationBar: Container(
            height: 75,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 2,
              backgroundColor: Colors.white,
              currentIndex: index is NavbarUpdate ? index.currentIndex : 0,
              onTap: (newIndex) {
                context.read<NavbarCubit>().updateIndex(newIndex);
              },
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.greyColor,
              selectedLabelStyle: TextAppTheme.textStyle12,
              unselectedLabelStyle: TextAppTheme.textStyle12,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 24.sp),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, size: 24.sp),
                  label: 'Favorites',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

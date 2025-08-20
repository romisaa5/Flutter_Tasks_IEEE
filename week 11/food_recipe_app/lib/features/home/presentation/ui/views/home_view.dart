import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_all_category/get_all_category_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_recipes/get_recipes_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/filters_food_recipe.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/welcome_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAllCategoryCubit>(context).fetchAllCategories();
    BlocProvider.of<GetRecipesCubit>(context).fetchRecipesByCategory('Beef');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.h),
      child: RefreshIndicator(
        onRefresh: () async {
          await context.read<GetAllCategoryCubit>().fetchAllCategories();
          await context.read<GetRecipesCubit>().fetchRecipesByCategory('Beef');
        },
        child: ListView(
          children: [
            20.ph,
            WelcomeContainer(),
            20.ph,
            Text('Popular Recipes', style: TextAppTheme.textStyle18),
            20.ph,
            FiltersFoodRecipe(),
          ],
        ),
      ),
    );
  }
}

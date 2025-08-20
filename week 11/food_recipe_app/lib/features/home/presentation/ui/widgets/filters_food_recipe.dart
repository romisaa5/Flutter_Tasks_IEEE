import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/helper/extentions.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:food_recipe_app/core/utils/app_router.dart';
import 'package:food_recipe_app/features/home/data/models/categories/category.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_all_category/get_all_category_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/manager/get_recipes/get_recipes_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/categories_shimmer.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/food_recipe_card.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/food_recipe_skeleton_grid.dart';
import 'package:go_router/go_router.dart';

class FiltersFoodRecipe extends StatefulWidget {
  const FiltersFoodRecipe({super.key});

  @override
  State<FiltersFoodRecipe> createState() => _FiltersFoodRecipeState();
}

class _FiltersFoodRecipeState extends State<FiltersFoodRecipe> {
  List<FoodCategory> categories = [];
  String? selectedCategory;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAllCategoryCubit>(context).fetchAllCategories();
    // أول مرة يجيب Beef
    BlocProvider.of<GetRecipesCubit>(context).fetchRecipesByCategory('Beef');
    selectedCategory = 'Beef';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllCategoryCubit, GetAllCategoryState>(
      builder: (context, state) {
        if (state is GetAllCategorySuccess) {
          categories = state.categories;
          return Column(
            children: [
              SizedBox(
                height: 45.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index].strCategory ?? '';
                    final isSelected = category == selectedCategory;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                        BlocProvider.of<GetRecipesCubit>(
                          context,
                        ).fetchRecipesByCategory(category);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5.h),
                        margin: EdgeInsets.all(8.h),
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color:
                              isSelected
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                          border: Border.all(
                            color: AppColors.primaryColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                              color:
                                  isSelected
                                      ? Colors.white
                                      : AppColors.primaryColor,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              20.ph,
              BlocBuilder<GetRecipesCubit, GetRecipesState>(
                builder: (context, state) {
                  if (state is GetRecipesLoading) {
                    return FoodRecipeSkeletonGrid();
                  } else if (state is GetRecipesSuccess) {
                    final filteredMeals = state.meals;
                    return SizedBox(
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: filteredMeals.length,
                        itemBuilder: (context, index) {
                          final meal = filteredMeals[index];
                          return GestureDetector(
                            onTap: () {
                              GoRouter.of(
                                context,
                              ).push(AppRouter.detailsview, extra: meal.idMeal);
                            },
                            child: FoodRecipeCard(foodRecipe: meal),
                          );
                        },
                      ),
                    );
                  } else if (state is GetRecipesFailure) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10.h,
                        children: [
                          Icon(
                            state.errorModel.icon,
                            size: 50.sp,
                            color: Colors.red,
                          ),
                          Text(state.errorModel.message),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          );
        } else if (state is GetAllCategoryLoading) {
          return Column(
            children: [
              const CategoriesShimmer(),
              20.ph,
              FoodRecipeSkeletonGrid(),
            ],
          );
        }
        return Column(
          children: [
            const CategoriesShimmer(),
            20.ph,
            FoodRecipeSkeletonGrid(),
          ],
        );
      },
    );
  }
}

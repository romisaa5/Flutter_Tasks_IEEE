import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';
import 'package:food_recipe_app/core/utils/app_text_theme.dart';
import 'package:food_recipe_app/features/home/presentation/manager/meal_details/meal_details_cubit.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/custom_favorite_icon.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/custom_loader.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/detail_tab_bar.dart';
import 'package:food_recipe_app/features/home/presentation/ui/widgets/more_options_menu.dart';

class MealDetailsView extends StatefulWidget {
  const MealDetailsView({super.key, required this.mealId});
  final String mealId;

  @override
  State<MealDetailsView> createState() => _MealDetailsViewState();
}

class _MealDetailsViewState extends State<MealDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<MealDetailsCubit>().fetchMealDetails(widget.mealId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealDetailsCubit, MealDetailsState>(
      builder: (context, state) {
        if (state is MealDetailsLoading) {
          return CustomLoader();
        } else if (state is MealDetailsSuccess) {
          final meal = state.meal;
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [MoreOptionsMenu(mealDetails: meal)],
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      meal.strMealThumb ?? '',
                      fit: BoxFit.cover,
                      height: 200.h,
                      width: double.infinity,
                    ),
                    Text(
                      meal.strMeal ?? 'No Name',
                      style: TextAppTheme.textStyle18.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Taste the flavors of ${meal.strArea} cuisine!",
                        style: TextAppTheme.textStyle14.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: Text(
                        'Category : ${meal.strCategory} ',
                        style: TextAppTheme.textStyle12,
                      ),
                      trailing: CustomFavoriteIcon(),
                    ),

                    DetailTabsSection(recipe: meal),
                  ],
                ),
              ),
            ),
          );
        } else if (state is MealDetailsFailure) {
          return Center(
            child: Column(
              children: [
                Icon(state.errorModel.icon, size: 50.sp, color: Colors.red),
                Text(state.errorModel.message),
              ],
            ),
          );
        } else if (state is MealDetailsInitial) {
          return Center(child: Text("Waiting for data..."));
        } else {
          return Center(child: Text('Unexpected state'));
        }
      },
    );
  }
}

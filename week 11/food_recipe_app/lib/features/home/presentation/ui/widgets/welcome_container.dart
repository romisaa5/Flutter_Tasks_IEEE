import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/utils/app_colors.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return   Align(
            alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 237, 241),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: AppColors.darkGreyColor,
                        ),
                        onPressed: () {},
                      ),

                      const Text(
                        "What are you cooking today ?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),

                      IconButton(
                        icon: const Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 124, 119, 119),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 124, 119, 119),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 40),
                  ShaderMask(
                    shaderCallback:
                        (bounds) => const LinearGradient(
                          colors: [
                            AppColors.lightOrangeColor,
                            AppColors.primaryColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    'Discover new recipes and enjoy cooking',
                    style: TextStyle(
                      color: Color.fromARGB(255, 124, 119, 119),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

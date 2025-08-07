import 'package:expenzo_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  Future<void> navigateUser() async {
    await Future.delayed(const Duration(seconds: 4));
    final prefs = await SharedPreferences.getInstance();
    final isOnBoarded = prefs.getBool('isOnBoarded') ?? false;
    if (!mounted) return;
    if (isOnBoarded) {
      GoRouter.of(context).go(AppRouter.homeview);
    } else {
      GoRouter.of(context).go(AppRouter.firstScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Logo.png', width: 100, height: 96),
      ),
    );
  }
}

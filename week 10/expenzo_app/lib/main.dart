import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:expenzo_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ExpenzoApp());
}

class ExpenzoApp extends StatelessWidget {
  const ExpenzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: false,
            colorScheme: ColorScheme.light(primary: AppColors.primaryColor),
            dialogTheme: const DialogTheme(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
        );
      },
    );
  }
}

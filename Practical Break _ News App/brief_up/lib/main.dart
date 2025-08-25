import 'package:brief_up/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BriefUp());
}

class BriefUp extends StatelessWidget {
  const BriefUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return ScreenUtilInit(
          child: MaterialApp.router(
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.getRouter(),
          ),
        );
      },
    );
  }
}

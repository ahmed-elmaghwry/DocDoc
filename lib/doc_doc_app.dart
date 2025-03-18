import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_colors.dart';


class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute:  Routes.onBoardingView,
        title: 'DocDoc',
        theme: ThemeData(scaffoldBackgroundColor: Colors.white,primaryColor: AppColors.darkBlue),
      ),
    );
  }
}

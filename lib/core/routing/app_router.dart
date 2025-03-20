
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/presentation/home_view.dart';
import 'package:docdoc/features/sign_up/presentation/sign_up_view.dart';
import 'package:flutter/material.dart';
import '../../features/login/presentation/login_view.dart';
import '../../features/on_boarding/presentation/on_boarding_view.dart';


class AppRouter {

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) =>
            LoginView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) =>
            HomeView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) =>
            SignUpView());
      default:
        return MaterialPageRoute(builder: (_) =>
        const Scaffold(
          body: Center(child: Text('Page not found'),),
        ));
    }
  }


}


import 'package:docdoc/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      default:
        return MaterialPageRoute(builder: (_) =>
        const Scaffold(
          body: Center(child: Text('Page not found'),),
        ));
    }
  }


}

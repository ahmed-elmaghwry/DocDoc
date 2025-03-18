import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/features/login/presentation/body/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          ///TODO: BlocProvider for LoginCubit
          body: BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginViewBody(),
          ),
        ));
  }
}

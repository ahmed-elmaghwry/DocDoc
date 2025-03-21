import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/features/sign_up/presentation/body/sign_up_view_body.dart';
import 'package:docdoc/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
          body: BlocProvider(
            //TODO: BlocProvider for signUpCubit
            create: (context) => getIt<SignUpCubit>(),
            child: SignUpViewBody(),
          ),
        ));
  }
}

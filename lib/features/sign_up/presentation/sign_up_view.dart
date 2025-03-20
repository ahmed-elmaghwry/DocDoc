import 'package:docdoc/features/sign_up/presentation/body/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SignUpViewBody(),
    ));
  }
}

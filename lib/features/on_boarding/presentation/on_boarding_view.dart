import 'package:docdoc/features/on_boarding/presentation/body/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class   OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}

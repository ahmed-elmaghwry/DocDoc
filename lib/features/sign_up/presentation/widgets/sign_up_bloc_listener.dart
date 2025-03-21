import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:docdoc/core/utils/app_text_styles.dart';
import 'package:docdoc/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:docdoc/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';



class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      ///todo:هنا بقوله انه يسمع الااستيت بتاعي الاول
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Error,
      listener: (context, state) {
        ///  هنا بقوله لما تسمع االستيت في الحاله اللود يعمل كذا وفي الحاله [اsucess] يعمل كذا
        ///وفي الحاله [error] يعمل كذا
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.borderBlue,
                ),
              ),
            );
          },
          success: (signUpResponse) {
            context.pop();
            context.pushNamed(Routes.loginView);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
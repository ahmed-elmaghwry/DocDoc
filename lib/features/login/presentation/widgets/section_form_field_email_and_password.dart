import 'package:docdoc/core/helpers/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../cubit/login_cubit.dart';

class SectionFormFieldEmailAndPassword extends StatefulWidget {
  const SectionFormFieldEmailAndPassword({
    super.key,
  });

  @override
  State<SectionFormFieldEmailAndPassword> createState() =>
      _SectionFormFieldEmailAndPasswordState();
}

class _SectionFormFieldEmailAndPasswordState
    extends State<SectionFormFieldEmailAndPassword> {
  bool isObscure = true;
  late TextEditingController emailController;

  late TextEditingController passwordController;

  // TODO: عاوز ابقي اجرب اشيل ال initstate
  @override
  void initState() {
    // TODO: اول لما الشاشه تفتح

    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // TODO: هنا الفورم كي بتاعي بجيبه من الكيوبت بتاعي
      key: context.read<LoginCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter your email address';
              }
              bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value);
              if (!emailValid) {
                return 'please enter a valid email address';
              }
              return null;
            },
          ),
          heightSpace(20),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObscureText: isObscure,
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password.';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long.';
              }
              return null;
            },
          ),
          heightSpace(20),
          Text(
            textAlign: TextAlign.start,
            AppStrings.forgetPassword,
            style: AppTextStyles.font13BlueSemiBold.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

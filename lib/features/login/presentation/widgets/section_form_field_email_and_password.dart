import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/presentation/widgets/password_validations_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    // TODO: اول لما الشاشه تفتح
    passwordController = context.read<LoginCubit>().passwordController;

    _passwordValidation();
    super.initState();
  }

  // TODO:validate password
  void _passwordValidation() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  ///todo:dispose controller
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // TODO: هنا الفورم كي بتاعي بجيبه من الكيوبت بتاعي
      key: context.read<LoginCubit>().formKey,
      child: Column(
        spacing: 20.h,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
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
          PasswordValidationsWidget(
              hasUpperCase: hasUpperCase,
              hasLowerCase: hasLowerCase,
              hasSpecialChar: hasSpecialChar,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength),
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

import 'package:docdoc/core/helpers/spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class SectionFormFieldEmailAndPassword extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const SectionFormFieldEmailAndPassword({
    required this.formKey,
    super.key,
  });

  @override
  State<SectionFormFieldEmailAndPassword> createState() =>
      _SectionFormFieldEmailAndPasswordState();
}

class _SectionFormFieldEmailAndPasswordState
    extends State<SectionFormFieldEmailAndPassword> {
  bool isObscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppTextFormField(
            controller: emailController,
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
            controller: passwordController,
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

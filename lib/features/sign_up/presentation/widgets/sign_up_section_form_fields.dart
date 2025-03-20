import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/features/login/presentation/widgets/password_validations_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class SignUpSectionFormFields extends StatefulWidget {
  const SignUpSectionFormFields({
    super.key,
  });

  @override
  State<SignUpSectionFormFields> createState() =>
      _SignUpSectionFormFieldsState();
}

class _SignUpSectionFormFieldsState extends State<SignUpSectionFormFields> {
  // TODO: بعرف المغيرات بتاعت الشاشه هنا الاول
  bool isObscure = true;
  // late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    // TODO: اول لما الشاشه تفتح
    //passwordController = context.read<LoginCubit>().passwordController;

   // _passwordValidation();
    super.initState();
  }

  // // TODO:validate password
  // void _passwordValidation() {
  //   passwordController.addListener(() {
  //     setState(() {
  //       hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
  //       hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
  //       hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
  //       hasNumber = AppRegex.hasNumber(passwordController.text);
  //       hasMinLength = AppRegex.hasMinLength(passwordController.text);
  //     });
  //   });
  // }

  ///todo:dispose controller
  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }

  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐  //⭐
  @override
  Widget build(BuildContext context) {
    return Form(
      // TODO: هنا الفورم كي بتاعي بجيبه من الكيوبت بتاعي
      // key: context.read<LoginCubit>().formKey,
      child: Column(
        spacing: 20.h,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //*⭐ name
          AppTextFormField(
            //    controller: context.read<LoginCubit>().emailController,
            hintText: 'name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter your name';
              }
            },
          ),
          //*⭐ phoneNumber
          AppTextFormField(
            //    controller: context.read<LoginCubit>().emailController,
            hintText: 'phone number',
            keyboardType: TextInputType.phone,
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
          //*⭐ email
          AppTextFormField(
            //    controller: context.read<LoginCubit>().emailController,
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
          //*⭐ password
          AppTextFormField(
            //  controller: context.read<LoginCubit>().passwordController,
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
          //*⭐ confirm Password
          AppTextFormField(
            //  controller: context.read<LoginCubit>().passwordController,
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
            hintText: 'confirm Password',
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

        ],
      ),
    );
  }
}

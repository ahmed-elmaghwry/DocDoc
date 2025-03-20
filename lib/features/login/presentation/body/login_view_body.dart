import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/data/model/login_request_model.dart';
import 'package:docdoc/features/login/presentation/cubit/login_cubit.dart';
import 'package:docdoc/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:docdoc/features/login/presentation/widgets/section_terms_and_privacy_text.dart';
import 'package:docdoc/features/login/presentation/widgets/section_top_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../widgets/section_form_field_email_and_password.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          children: [
            SectionTopText(),
            heightSpace(60),
            SectionFormFieldEmailAndPassword(),
            heightSpace(60),
            AppCustomButton(
              buttonText: 'login',
              textStyle: AppTextStyles.font16WhiteMedium,
              onPressed: () {
                _validationThenLogin(context);
              },
            ),
            heightSpace(60),
            TermsAndPrivacyText(),
            LoginBlocListener(),
          ],
        ),
      ),
    );
  }

  void _validationThenLogin(BuildContext context) {
    ///todo: هنا بشوف لو الدنيا تمام في الفاليدات بتاعي بخليه يعمل لوجين
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      ///todo: يعني بدخل جوا ال (if ) وبقوله اعمل لوجين عن طريق الكيوبت
      context.read<LoginCubit>().emitLoginStates(
            loginRequestModel: LoginRequestModel(
                email: context.read<LoginCubit>().emailController.text,
                password: context.read<LoginCubit>().passwordController.text),
          );
    }
  }
}

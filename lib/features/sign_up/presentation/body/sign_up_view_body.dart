import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:docdoc/features/sign_up/presentation/widgets/sign_up_section_form_fields.dart';
import 'package:docdoc/features/sign_up/presentation/widgets/sign_up_section_top_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../login/presentation/widgets/section_form_field_email_and_password.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignUpSectionTopTitle(),
            heightSpace(60),
             SignUpSectionFormFields(),
            heightSpace(40),
            AppCustomButton(
              buttonText: 'Create Account',
              textStyle: AppTextStyles.font16WhiteMedium,
              onPressed: () {
               context.pushReplacementNamed(Routes.loginView);
              },
            ),


          ],
        ),
      ),
    );
  }
}

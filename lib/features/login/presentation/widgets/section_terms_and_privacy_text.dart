
import 'dart:ui';

import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/utils/app_text_styles.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyles.font10GrayRegular,
            children: [
              const TextSpan(
                text: 'By logging, you agree to our ',
              ),
              TextSpan(
                text: 'Terms & Conditions',
                style: AppTextStyles.font13BlueSemiBold.copyWith(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {

                  },
              ),
              const TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: AppTextStyles.font13BlueSemiBold.copyWith(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {

                  },
              ),
              const TextSpan(
                text: '.',
              ),
            ],
          ),
        ),

        heightSpace(15),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyles.font10GrayRegular,
            children: [
              const TextSpan(
                text: 'Already have an account yet? ',
              ),
              TextSpan(
                text: '  Sign Up',
                style: AppTextStyles.font13BlueSemiBold.copyWith(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  context.pushNamed(Routes.signUpView);
                  },
              ),

            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class SignUpSectionTopTitle extends StatelessWidget {
  const SignUpSectionTopTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSpace(30),
        Text(
          AppStrings.signUp,
          style: AppTextStyles.font24BlueBold,
        ),
        heightSpace(15),
        Text(
          AppStrings.getInstanceAccessToTopDoctor,
          style: AppTextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}

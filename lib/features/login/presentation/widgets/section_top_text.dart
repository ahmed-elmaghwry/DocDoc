import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class SectionTopText extends StatelessWidget {
  const SectionTopText({
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
          AppStrings.welcomeBack,
          style: AppTextStyles.font18BlueBold,
        ),
        heightSpace(15),
        Text(
          AppStrings.weAreExcited,
          style: AppTextStyles.font12GrayRegular,
        ),
      ],
    );
  }
}

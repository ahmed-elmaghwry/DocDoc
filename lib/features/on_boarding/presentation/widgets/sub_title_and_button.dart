
import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:docdoc/core/widgets/app_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class SubTitleAndButton extends StatelessWidget {
  const SubTitleAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          AppStrings.manageAndSchedule,
          style: AppTextStyles.font10GrayRegular,
        ),
        SizedBox(
          height: 30,
        ),
        AppCustomButton(
          onPressed: () {

            context.pushReplacementNamed(Routes.loginView);
          },
          buttonText: 'Get Started',
          textStyle: AppTextStyles.font14WhiteSemiBold,
horizontalPadding: 8.w,
           buttonHorizontalPadding: 30.w,

        )
      ],
    );
  }
}

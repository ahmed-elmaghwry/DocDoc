import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class DocDocAndLogoSection extends StatelessWidget {
  const DocDocAndLogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.logo,
            height: 44.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            AppStrings.docDoc,
            style: AppTextStyles.font24BlueBold
                .copyWith(color: Colors.black,fontSize: 22.sp),
          )
        ],
      ),
    );
  }
}

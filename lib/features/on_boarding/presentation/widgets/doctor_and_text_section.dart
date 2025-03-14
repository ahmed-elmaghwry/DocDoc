import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class DoctorAndTextSection extends StatelessWidget {
  const DoctorAndTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AppAssets.frameBackgroundOnboarding,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 255, 255, 0),
              ],
              stops: [0.10, 0.75],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset(
            AppAssets.doctorOnboarding,
            scale: 4.2.r,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppStrings.bestDoctor, style: AppTextStyles.font24BlueBold),
              Text(AppStrings.appointmentApp,
                  style: AppTextStyles.font24BlueBold),
            ],
          ),
        )
      ],
    );
  }
}

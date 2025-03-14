import 'package:docdoc/features/on_boarding/presentation/widgets/sub_title_and_button.dart';
import 'package:flutter/material.dart';
import '../widgets/doc_doc_and_logo_section.dart';
import '../widgets/doctor_and_text_section.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DocDocAndLogoSection(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          DoctorAndTextSection(),
          SizedBox(
            height: 20,
          ),
          SubTitleAndButton()
        ],
      ),
    );
  }
}

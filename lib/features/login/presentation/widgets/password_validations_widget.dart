import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidationsWidget extends StatelessWidget {
  const PasswordValidationsWidget({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasSpecialChar,
    required this.hasNumber,
    required this.hasMinLength,
  });

  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: [
        _buildValidationRow(
          text: 'At Least 1 Uppercase letter',
          hasValidation: hasUpperCase,
        ),
        _buildValidationRow(
          text: 'At Least 1 Lowercase Letter',
          hasValidation: hasLowerCase,
        ),
        _buildValidationRow(
          text: 'At Least 1 Special Char',
          hasValidation: hasSpecialChar,
        ),
        _buildValidationRow(
          text: 'At Least 1 Number',
          hasValidation: hasNumber,
        ),
        _buildValidationRow(
          text: 'At Least 8 Characters Length',
          hasValidation: hasMinLength,
        ),
      ],
    );
  }

  Row _buildValidationRow({required bool hasValidation, required String text}) {
    return Row(
      spacing: 5,
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.gray,
        ),
        Text(
          text,
          style: AppTextStyles.font12DarkBlueRegular.copyWith(
              decorationColor: AppColors.green,
              decoration: hasValidation
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationThickness: 2,
              color: hasValidation ? AppColors.gray : AppColors.darkBlue),
        )
      ],
    );
  }
}

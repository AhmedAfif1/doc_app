import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:doc_doc_app/Core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primary,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(double.infinity, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Text('Get Started', style: AppStyles.white16SemiBold),
      onPressed: onPressed,
    );
  }
}

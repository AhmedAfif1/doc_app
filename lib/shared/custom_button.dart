import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.textColor,
    this.backgroundColor,
    this.borderSideColor,
    required this.text,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? borderSideColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final defaultBgColor = isDark ? AppColors.primary : AppColors.primary;
    final defaultBorderColor = isDark ? AppColors.primary : AppColors.primary;
    final defaultTextColor =
        textColor ?? (isDark ? Colors.white : AppColors.backgroundColor);

    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderSideColor ?? defaultBorderColor),
          backgroundColor: backgroundColor ?? defaultBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: defaultTextColor,
          ),
        ),
      ),
    );
  }
}

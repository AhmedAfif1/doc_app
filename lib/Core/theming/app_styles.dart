import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  // ── Headline ─────────────────────────────────────────────────────────────
  static TextStyle get primaryHeadLineStyle =>
      TextStyle(fontWeight: FontWeight.w800, fontSize: 22.sp);

  static TextStyle get subTitleStyles =>
      TextStyle(fontWeight: FontWeight.w300, fontSize: 13.sp);

  static TextStyle get black16w600 =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp);

  static TextStyle get black28w800 =>
      TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp);
  static TextStyle get grey16w400 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.greyColor,
  );
  // ── Used for form field labels ────────────────────────────────────────────
  // Was 18.sp (too large). Now 14.sp for a clean, proportional label.
  static TextStyle get black18W500Style =>
      TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp);

  static TextStyle get black16W300Style =>
      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp);

  static TextStyle get secondaryColorr32WBoldStyle => TextStyle(
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
  );

  static TextStyle get white16SemiBold => TextStyle(
    color: AppColors.backgroundColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
}

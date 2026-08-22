import 'package:doc_doc_app/Core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  // ── Headline ─────────────────────────────────────────────────────────────
  static TextStyle get primaryHeadLineStyle => TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 22.sp,
      );

  static TextStyle get subTitleStyles => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 13.sp,
      );

  static TextStyle get black16w600 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 15.sp,
      );

  static TextStyle get black28w800 => TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 24.sp,
      );

  // ── Used for form field labels ────────────────────────────────────────────
  // Was 18.sp (too large). Now 14.sp for a clean, proportional label.
  static TextStyle get black18W500Style => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      );

  static TextStyle get black16W300Style => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      );

  static TextStyle get secondaryColorr16W500Style => TextStyle(
        color: AppColors.secondaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      );
}

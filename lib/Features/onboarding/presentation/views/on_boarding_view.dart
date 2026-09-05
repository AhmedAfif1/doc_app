import 'package:doc_doc_app/Core/routing/app_routes.dart';
import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:doc_doc_app/Core/routing/app_router.dart';
import 'package:doc_doc_app/Core/theming/app_styles.dart';
import 'package:doc_doc_app/Features/onboarding/presentation/views/widgets/doc_logo_and_name.dart';
import 'package:doc_doc_app/Features/onboarding/presentation/views/widgets/doctor_image_and_text.dart';
import 'package:doc_doc_app/Features/onboarding/presentation/views/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DocLogoAndName(),
                Gap(30),
                DoctorImageAndText(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        textAlign: TextAlign.center,
                        style: AppStyles.grey16w400,
                      ),
                      Gap(30),
                      GetStartedButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(AppRoutes.loginView);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

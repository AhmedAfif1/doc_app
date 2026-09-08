import 'package:doc_doc_app/Core/routing/app_routes.dart';
import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:doc_doc_app/Core/theming/app_styles.dart';
import 'package:doc_doc_app/shared/custom_button.dart';
import 'package:doc_doc_app/shared/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(70),
                  // Center(
                  //   child: ClipOval(
                  //     child: Image.asset(
                  //       'assets/image/logo.png',
                  //       width: 140.w,
                  //       height: 140.h,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  Gap(20),
               
                  Text(
                    'Welcome Back',
                    style: AppStyles.black28w800.copyWith(color: AppColors.primary)
                  ),
                                  Gap(10),
                  Text(
                    'We are excited to have you back, cant wait to \nsee what you have been up to since you last \nlogged in.',
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                  ),
                  Gap(50),
                  // Add login form widgets here
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Gap(10),
                  CustomTextFormFiled(
                    hintText: 'Email Address',
                    isPassword: false,
                   // prefixIcon: Icon(Icons.email),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  Gap(20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Gap(10),
                  CustomTextFormFiled(
                    hintText: 'Password',
                    isPassword: true,
                  //  prefixIcon: Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                  ),
                  Gap(30),
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      // Handle login action
                    },
                  ),
                  // Gap(15),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     'Forgot Password?',
                  //     style: TextStyle(fontSize: 16.sp, color: AppColors.primary),
                  //   ),
                  // ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(AppRoutes.signUpView);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

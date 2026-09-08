import 'package:doc_doc_app/Core/routing/app_routes.dart';
import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:doc_doc_app/shared/custom_button.dart';
import 'package:doc_doc_app/shared/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  TextEditingController? firstNameController = TextEditingController();
  TextEditingController? lastNameController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gap(20),
                // Center(
                //   child: ClipOval(
                //     child: Image.asset(
                //       'assets/image/logo.png',
                //       width: 90.w,
                //       height: 90.h,
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                Gap(10),
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(10),
                Text(
                  'Please fill in the details to create an account',
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
                Gap(50),
                // Add signup form widgets here
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'First Name',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Gap(10),
                CustomTextFormFiled(
                  hintText: 'First Name',
                  isPassword: false,
                  prefixIcon: Icon(Icons.person),
                  keyboardType: TextInputType.text,
                  controller: firstNameController,
                ),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Gap(10),
                CustomTextFormFiled(
                  hintText: 'Last Name',
                  isPassword: false,
                  prefixIcon: Icon(Icons.person),
                  keyboardType: TextInputType.text,
                  controller: lastNameController,
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
                  prefixIcon: Icon(Icons.lock),
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                ),

                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Gap(10),
                CustomTextFormFiled(
                  hintText: 'Confirm Password',
                  isPassword: true,
                  prefixIcon: Icon(Icons.lock),
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmPasswordController,
                ),

                Gap(30),
                // Add signup button here
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    // Handle signup action
                  },
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(AppRoutes.loginView);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

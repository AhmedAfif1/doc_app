import 'package:doc_doc_app/Core/constants/app_colors.dart';
import 'package:doc_doc_app/Core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(primaryColor: AppColors.primary),
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          routerConfig: AppRouter.goRouter,
        );
      },
    );
  }
}

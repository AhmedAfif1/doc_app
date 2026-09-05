import 'package:doc_doc_app/Core/theming/app_colors.dart';
import 'package:doc_doc_app/Core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          routerConfig: AppRouter.goRouter,
        );
      },
    );
  }
}

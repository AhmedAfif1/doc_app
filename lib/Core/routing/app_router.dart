import 'package:doc_doc_app/Core/routing/app_routes.dart';
import 'package:doc_doc_app/Features/auth/presentation/views/login_view.dart';
import 'package:doc_doc_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:doc_doc_app/Features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingView,
    routes: [
      GoRoute(
        name: AppRoutes.onBoardingView,
        path: AppRoutes.onBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        name: AppRoutes.loginView,
        path: AppRoutes.loginView,
        builder: (context, state) => LoginView(),
      ),

      GoRoute(
        name: AppRoutes.signUpView,
        path: AppRoutes.signUpView,
        builder: (context, state) => SignUpView(),
      ),
    ],
  );
}

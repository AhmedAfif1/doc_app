import 'package:doc_doc_app/Core/routing/routes.dart';
import 'package:doc_doc_app/Features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: Routes.onBoardingView,
    routes: [
       GoRoute(
        name: Routes.onBoardingView,
        path: Routes.onBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      // GoRoute(
      //   name: Routes.loginView,
      //   path: Routes.loginView,
      //   builder: (context, state) => LoginView(),
      // ),
      // GoRoute(
      //   name: Routes.signUpView,
      //   path: Routes.signUpView,
      //   builder: (context, state) => SignUpView(),
      // ),
   
    ],
  );
}

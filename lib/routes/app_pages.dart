import 'package:get/get.dart';

import '../modules/create_account/create_account_binding.dart';
import '../modules/create_account/create_account_page.dart';
import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_page.dart';
import '../modules/signin/signin_binding.dart';
import '../modules/signin/signin_page.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_page.dart';
import '../modules/verify_code/verify_code_binding.dart';
import '../modules/verify_code/verify_code_page.dart';
import '../modules/welcome/welcome_binding.dart';
import '../modules/welcome/welcome_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboardingPage,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.welcomePage,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.signInPage,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.createAccountPage,
      page: () => CreateAccountPage(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: AppRoutes.verifyCodePage,
      page: () => VerifyCodePage(),
      binding: VerifyCodeBinding(),
    ),
    /*GetPage(
      name: AppRoutes.dashboardPage,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),*/
  ];
}

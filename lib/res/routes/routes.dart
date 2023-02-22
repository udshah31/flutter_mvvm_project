import 'package:flutter_mvvm_project/res/routes/routes_name.dart';
import 'package:flutter_mvvm_project/view/forget_password/forget_password_screen.dart';
import 'package:flutter_mvvm_project/view/home/home_screen.dart';
import 'package:flutter_mvvm_project/view/login/login_screen.dart';
import 'package:flutter_mvvm_project/view/signup/sign_up_screen.dart';
import 'package:flutter_mvvm_project/view/splash_screen.dart';
import 'package:flutter_mvvm_project/view/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AppsRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.SPLASH_SCREEN,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(seconds: 3),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.WELCOME_SCREEN,
            page: () => const WelcomeScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.LOGIN_SCREEN,
            page: () => const LoginScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.SIGNUP_SCREEN,
            page: () => const SignUpScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.FORGET_PASSWORD_SCREEN,
            page: () => const ForgetPasswordScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.HOME_SCREEN,
            page: () => const HomeScreen(),
            transition: Transition.leftToRightWithFade),
      ];
}

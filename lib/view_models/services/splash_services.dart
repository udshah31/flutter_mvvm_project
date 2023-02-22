import 'dart:async';

import 'package:flutter_mvvm_project/res/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashServices {

  void isLogin() {
    Timer(const Duration(seconds: 3),
            () => Get.toNamed(RoutesName.WELCOME_SCREEN));
  }
}
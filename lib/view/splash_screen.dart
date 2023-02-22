import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/res/assets/images/image_assets.dart';
import 'package:flutter_mvvm_project/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
            child: Image(
              image: AssetImage(ImageAssets.SPLASH_SCREEN),
            ),
          )
      )
    );
  }
}

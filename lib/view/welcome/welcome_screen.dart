import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../res/assets/images/image_assets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30),
      alignment: Alignment.center,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const ClipRect(
          child: Image(
            image: AssetImage(ImageAssets.SPLASH_SCREEN),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Get.toNamed(RoutesName.LOGIN_SCREEN);
                        },
                        child: Text('sign_in'.tr)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(RoutesName.SIGNUP_SCREEN);
                          },
                          child: Text('create_account'.tr)))
                ],
              )
            ],
          ),
        )
      ]),
    ));
  }
}

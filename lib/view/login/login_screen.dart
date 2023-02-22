import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../res/assets/images/image_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ClipRect(
              child: Image(
                image: AssetImage(ImageAssets.SPLASH_SCREEN),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.deepOrange, width: 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.deepOrange, width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      fillColor: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RoutesName.FORGET_PASSWORD_SCREEN);
                      },
                      child: Text('forget_password'.tr),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('sign_in'.tr)))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Text.rich(TextSpan(text: 'no_account'.tr, children: [
                TextSpan(
                    text: 'register'.tr,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(RoutesName.SIGNUP_SCREEN);
                      })
              ])),
            )
          ],
        ),
      ),
    );
  }
}

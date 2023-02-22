import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/res/routes/routes_name.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('reset_password'.tr),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                  'reset_text'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    wordSpacing: 0.8,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'email_label_text'.tr,
                      hintText: 'email_hint'.tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.deepOrange, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(RoutesName
                                    .RESET_PASSWORD_CHECK_EMAIL_SCREEN);
                              },
                              child: Text('submit_text'.tr)))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

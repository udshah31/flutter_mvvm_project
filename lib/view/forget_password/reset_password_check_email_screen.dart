import 'package:flutter/material.dart';

class ResetPasswordCheckEmailScreen extends StatefulWidget {
  const ResetPasswordCheckEmailScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordCheckEmailScreen> createState() =>
      _ResetPasswordCheckEmailScreenState();
}

class _ResetPasswordCheckEmailScreenState
    extends State<ResetPasswordCheckEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Card(
              color: Colors.greenAccent,
              shadowColor: Colors.greenAccent,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.lightGreenAccent, width: 2),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Icon(
                  Icons.email_rounded,
                  size: 120,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Check your mail",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "We have sent a password recover instructions to your email.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                        child: Text("Open email app"),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Skip, i'll confirm later",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    ));
  }
}

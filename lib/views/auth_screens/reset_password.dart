import 'package:crowdafrik/components/const.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 60, 60),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  height: 200,
                  width: 320,
                  child: const Image(
                    image: AssetImage('assets/crowdAfrikLogo.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 285,
                child: TextWidget(
                  text: "Reset your password",
                  size: 36,
                  weight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const TextWidget(
                          text: "Reset Password",
                          size: 25,
                          weight: FontWeight.bold,
                          color: Colors.black),
                      const SizedBox(height: 20),
                      const TextFormWidget(
                        hinttext: 'Enter OTP',
                      ),
                      const SizedBox(height: 10),
                      const TextFormWidget(
                        hinttext: 'Create New password',
                      ),
                      const SizedBox(height: 10),
                      const TextFormWidget(hinttext: 'Re-enter your password'),
                      const SizedBox(height: 10),
                      CustomButton(
                          text: "Reset",
                          color: Colors.white,
                          size: 16,
                          fontweigh: FontWeight.bold,
                          fns: () {}),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

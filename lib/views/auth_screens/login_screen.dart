import 'package:crowdafrik/components/const.dart';
import 'package:crowdafrik/views/auth_screens/reset_password.dart';
import 'package:crowdafrik/views/auth_screens/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 60, 60),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 100),
              height: 200,
              width: 320,
              child: const Image(
                image: AssetImage('assets/crowdAfrikLogo.png'),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 185,
                child: TextWidget(
                  text: "Welcome back to",
                  size: 36,
                  weight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const TextWidget(
                        text: "Sign In",
                        size: 25,
                        weight: FontWeight.bold,
                        color: Colors.black),
                    const SizedBox(height: 20),
                    const TextFormWidget(
                      hinttext: 'Enter your phone number',
                    ),
                    const SizedBox(height: 10),
                    const TextFormWidget(
                      hinttext: 'Enter your password',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPassword(),
                            ),
                          );
                        },
                        child: const Text('Forget Password'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                        text: "Login",
                        color: Colors.white,
                        size: 16,
                        fontweigh: FontWeight.bold,
                        fns: () {}),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                            text: "Don't have an account",
                            size: 13,
                            weight: FontWeight.normal,
                            color: Colors.black),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          child: const TextWidget(
                              text: " Sign Up",
                              size: 13,
                              weight: FontWeight.w600,
                              color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

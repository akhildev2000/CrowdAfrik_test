import 'package:crowdafrik/components/const.dart';
import 'package:crowdafrik/views/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 870,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/welcomeScreen.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const TextWidget(
                          text: "Welcome to",
                          size: 32,
                          weight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 370,
                          child: TextWidget(
                            text:
                                'CrowdAfrik is a Financial technology (fintech) initiative with a broad range of ideas that aim to provide support, finances and deploy technical exchanges to Africans with the main goal of poverty reduction, industrial development and creating job opportunities',
                            size: 16,
                            weight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          fns: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          text: 'Get Started',
                          color: Colors.white,
                          size: 20,
                          fontweigh: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

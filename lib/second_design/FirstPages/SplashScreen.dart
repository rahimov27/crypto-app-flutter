import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crypto_project/second_design/PagesNavScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 275,
      backgroundColor: Colors.black,
      duration: 4000,
      centered: true,
      splashTransition: SplashTransition.fadeTransition,
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
              "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/Lottie/Splash.json",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      nextScreen: PagesNavScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tugas_final/screens/nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'lib/assets/pep.gif',
      ),
      nextScreen: Navigation(),
      splashTransition: SplashTransition.decoratedBoxTransition,
      backgroundColor: Colors.lightBlue,
      duration: 2000,
    );
  }
}
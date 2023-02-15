import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:property_app/Screens/home_screen.dart';

import 'nav_bar_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/Logo.png',
      // backgroundColor: ColorScheme.dark(background: S),
      backgroundColor: Theme.of(context).primaryColor,
      nextScreen: const BNavigationBar(),
      splashTransition: SplashTransition.slideTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}

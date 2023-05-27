
import 'package:admin/screens/entry.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        nextScreen:EntryScreen(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 2200,
        splashIconSize: 150,
      ),
    );
  }
}

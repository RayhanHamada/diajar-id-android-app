import 'package:diajar/pages/splash_screen_page/splash_screen_page.dart';
import 'package:flutter/material.dart';

class BeforeLoginRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}

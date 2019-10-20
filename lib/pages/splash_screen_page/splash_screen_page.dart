import 'package:diajar/pages/login_page/components/diajar_image.dart';
import 'package:diajar/pages/login_page/login_page.dart';
import 'package:diajar/pages/splash_screen_page/components/diajar_text.dart';
import 'package:diajar/pages/splash_screen_page/components/funfact_text.dart';
import 'package:diajar/pages/splash_screen_page/components/load_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  static const SPLASH_SCREEN_PAGE = "/SplashScreen";

  void toLoginScreen(BuildContext context) async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, LoginPage.LOGIN_PAGE);
    });
  }

  @override
  Widget build(BuildContext context) {
    toLoginScreen(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(00, 26, 63, 1),
      body: Center(
        child: Flex(
          children: <Widget>[
            DiajarImage(),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 120,
              ),
              child: DiajarText(),
            ),
            Flexible(
              child: LoadIndicator(),
            ),
            FunFactText(),
          ],
          direction: Axis.vertical,
        ),
      ),
    );
  }
}

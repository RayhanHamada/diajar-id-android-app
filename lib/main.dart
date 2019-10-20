import 'package:diajar/pages/after_login_page/after_login_page.dart';
import 'package:diajar/pages/login_page/login_page.dart';
import 'package:diajar/pages/register_page/register_page.dart';
import 'package:diajar/pages/splash_screen_page/splash_screen_page.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  static final _providers = [
    ChangeNotifierProvider(
      builder: (context) => LoginProvider(),
    ),
    ChangeNotifierProvider(
      builder: (context) => RegisterProvider(),
    )
  ];

  static final Map<String, Widget Function(BuildContext)> _routes = {
    SplashScreenPage.SPLASH_SCREEN_PAGE: (context) => SplashScreenPage(),
    LoginPage.LOGIN_PAGE: (context) => LoginPage(),
    RegisterPage.REGISTER_PAGE: (context) => RegisterPage(),
    AfterLoginPage.AFTER_LOGIN_PAGE: (context) => AfterLoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: _routes,
        home: SplashScreenPage(),
      ),
    );
  }
}

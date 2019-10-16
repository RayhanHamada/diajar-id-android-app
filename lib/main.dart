import 'package:diajar/pages/dashboard_page/dashboard_page.dart';
import 'package:diajar/pages/dashboard_page/dashboard_page.dart';
import 'package:diajar/pages/login_page/login_page.dart';
import 'package:diajar/pages/register_page/register_page.dart';
import 'package:diajar/pages/splash_screen_page/splash_screen_page.dart';
import 'package:diajar/provider/dashboard_provider.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
//        Provider<LoginProvider>.value(value: LoginProvider("", "")),
        ChangeNotifierProvider(
          builder: (context) => LoginProvider("", ""),
        ),
        ChangeNotifierProvider(
          builder: (context) => RegisterProvider(),
        ),
        ChangeNotifierProvider(
          builder: (context) => DashboardProvider(),
        )
      ],
      child: MaterialApp(
        routes: {
          SplashScreenPage.SPLASH_SCREEN_PAGE: (context) => SplashScreenPage(),
          LoginPage.LOGIN_PAGE: (context) => LoginPage(),
          RegisterPage.REGISTER_PAGE: (context) => RegisterPage(),
          DashboardPage.DASHBOARD_PAGE: (context) => DashboardPage(),
        },
        debugShowCheckedModeBanner: false,
        home: DashboardPage()
      ),
    );
  }
}

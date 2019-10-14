import 'package:diajar/pages/login_page/login_page.dart';
import 'package:diajar/pages/register_page/register_page.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:math' as m;
import 'package:provider/provider.dart';
import './model/FunFact.dart';
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
        ChangeNotifierProvider(builder: (context) => LoginProvider("",""),),
        ChangeNotifierProvider(builder: (context) => RegisterProvider(),)
      ],
      child: MaterialApp(
        routes: {
          LoginPage.LOGIN_PAGE: (context) => LoginPage(),
          RegisterPage.REGISTER_PAGE: (context) => RegisterPage()
        },
        home: LayoutBuilder(
          builder: (context, constraint) {
            return SplashScreen(
              seconds: 5,
              title: Text(
                'Diajar.ID',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Sans Serif',
                  fontSize: 45,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
              image: Image.asset(
                'assets/diajar.png',
              ),
              photoSize: 50,
              loaderColor: Colors.white,
              loadingText: Text(
                funfact[m.Random().nextInt(funfact.length)],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              navigateAfterSeconds: LoginPage(),
            );
          },
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

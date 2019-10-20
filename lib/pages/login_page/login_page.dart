import 'package:diajar/pages/login_page/components/login_form.dart';
import 'package:diajar/pages/login_page/login_handler.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static const LOGIN_PAGE = "/LoginPage";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      builder: (context) => LoginProvider(),
      child: LoginHandler(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
          body: Container(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

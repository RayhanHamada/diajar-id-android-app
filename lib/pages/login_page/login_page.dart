import 'package:diajar/pages/login_page/components/diajar_image.dart';
import 'package:diajar/pages/login_page/components/password_txt.dart';
import 'package:diajar/pages/login_page/components/email_txt.dart';
import 'package:diajar/pages/login_page/components/login_btn.dart';
import 'package:diajar/pages/login_page/components/to_register_page_btn.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static const LOGIN_PAGE = "/LoginPage";

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: Container(
        child: Form(
          key: loginProvider.formKey,
          child: ListView(
            children: <Widget>[
              DiajarImage(),
              Column(
                children: <Widget>[
                  EmailTxt(),
                  PasswordTxt(),
                  LoginBtn(),
                  ToRegisterPageBtn(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

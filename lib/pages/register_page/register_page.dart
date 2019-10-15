import 'package:diajar/pages/register_page/daftar_btn.dart';
import 'package:diajar/pages/register_page/email_txt.dart';
import 'package:diajar/pages/register_page/fullname_txt.dart';
import 'package:diajar/pages/register_page/password_txt.dart';
import 'package:diajar/pages/register_page/password_val_txt.dart';
import 'package:diajar/pages/register_page/to_login_page_btn.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static const REGISTER_PAGE = "/RegisterPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: Container(
        child: Form(
          key: RegisterProvider.formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: ListView(
              children: <Widget>[
                FullnameTxt(),
                EmailTxt(),
                PasswordTxt(),
                PasswordValTxt(),
                DaftarBtn(),
                ToLoginPageBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:diajar/pages/register_page/components/daftar_btn.dart';
import 'package:diajar/pages/register_page/components/email_txt.dart';
import 'package:diajar/pages/register_page/components/fullname_txt.dart';
import 'package:diajar/pages/register_page/components/password_txt.dart';
import 'package:diajar/pages/register_page/components/password_val_txt.dart';
import 'package:diajar/pages/register_page/components/to_login_page_btn.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  static const REGISTER_PAGE = "/RegisterPage";

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: Container(
        child: Form(
          key: registerProvider.formKey,
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

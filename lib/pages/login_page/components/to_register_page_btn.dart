import 'package:diajar/pages/login_page/login_handler.dart';
import 'package:diajar/pages/register_page/register_page.dart';
import 'package:flutter/material.dart';

class ToRegisterPageBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () => goToRegister(context),
        child: Text(
          'Belum punya akun?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  void goToRegister(BuildContext context) {
    final loginHandler = LoginHandler.of(context);
    loginHandler
      ..emailController.text = ''
      ..passwordController.text = '';
    Navigator.pushNamed(context, RegisterPage.REGISTER_PAGE);
  }
}

import 'package:diajar/pages/register_page/register_handler.dart';
import 'package:flutter/material.dart';

class ToLoginPageBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: GestureDetector(
          onTap: () => goBack(context),
          child: Text(
            '< Kembali ke halaman login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  void goBack(BuildContext context) {
    final registerHandler = RegisterHandler.of(context);
    registerHandler
      ..fullnameController.text = ''
      ..emailController.text = ''
      ..passwordController.text = ''
      ..passwordValController.text = '';
    Navigator.pop(context);
  }
}

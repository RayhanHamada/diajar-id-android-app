import 'package:diajar/pages/register_page/register_page.dart';
import 'package:flutter/material.dart';

class ToRegisterPageBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, RegisterPage.REGISTER_PAGE),
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
}

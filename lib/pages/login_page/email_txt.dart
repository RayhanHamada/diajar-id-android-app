import 'package:diajar/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loginProvider = Provider.of<LoginProvider>(context);
    return FractionallySizedBox(
      widthFactor: 0.85,
      child: TextFormField(
        validator: loginProvider.validateEmail,
        onSaved: loginProvider.setEmail,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: 'Masukkan email anda',
          hintStyle: TextStyle(color: Colors.white70),
          prefixIcon: Icon(
            Icons.mail_outline,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

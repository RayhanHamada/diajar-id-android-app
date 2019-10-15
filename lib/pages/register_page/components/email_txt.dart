import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);

    return FractionallySizedBox(
      widthFactor: 0.85,
      child: TextFormField(
        key: registerProvider.emailFieldKey,
        validator: registerProvider.emailValidate,
        onSaved: registerProvider.setEmail,
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

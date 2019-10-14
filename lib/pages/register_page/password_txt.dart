import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordTxt extends StatelessWidget {
  final GlobalKey<FormFieldState<String>> _key;

  const PasswordTxt(this._key);

  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<RegisterProvider>(context);

    return FractionallySizedBox(
      widthFactor: 0.85,
      child: TextFormField(
        key: _key,
        validator: registerProvider.passwordValidate,
        onSaved: registerProvider.setPassword,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: 'Masukkan password anda',
          hintStyle: TextStyle(
            color: Colors.white70,
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            size: 30,
            color: Colors.white,
          ),
        ),
        obscureText: true,
      ),
    );
  }
}

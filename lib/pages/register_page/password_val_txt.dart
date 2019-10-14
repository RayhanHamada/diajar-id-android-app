import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordValTxt extends StatelessWidget {
  final GlobalKey<FormFieldState<String>> _txtfieldKey;

  const PasswordValTxt(this._txtfieldKey);

  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<RegisterProvider>(context);

    return FractionallySizedBox(
      widthFactor: 0.85,
      child: TextFormField(
        validator: (password) =>
            registerProvider.passwordValidationValidate(password, _txtfieldKey),
        onSaved: registerProvider.setPasswordValidation,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: 'Validasi password anda',
          hintStyle: TextStyle(
            color: Colors.white70,
          ),
          prefixIcon: Icon(
            Icons.lock,
            size: 30,
            color: Colors.white,
          ),
        ),
        obscureText: true,
      ),
    );
  }
}

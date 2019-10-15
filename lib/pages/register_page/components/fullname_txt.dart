import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FullnameTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);

    return FractionallySizedBox(
      widthFactor: 0.85,
      child: TextFormField(
        key: registerProvider.fullnameFieldKey,
        validator: registerProvider.fullnameValidate,
        onSaved: registerProvider.setFullname,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: 'Masukkan nama lengkap anda',
          hintStyle: TextStyle(
            color: Colors.white70,
          ),
          prefixIcon: Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

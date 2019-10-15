import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DaftarBtn extends StatelessWidget {
  void onPressed(RegisterProvider provider) {
    if (provider.formKey.currentState.validate()) {
      provider.formKey.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: RaisedButton(
          onPressed: () => onPressed(registerProvider),
          color: Colors.deepOrange,
          child: Text(
            "Daftar",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          elevation: 8,
          splashColor: Colors.white,
        ),
      ),
    );
  }
}

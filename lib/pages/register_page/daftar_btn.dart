import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DaftarBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<RegisterProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: RaisedButton(
          onPressed: () => registerProvider.onRegisterBtnPressed(),
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

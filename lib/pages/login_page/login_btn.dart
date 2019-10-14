import 'package:diajar/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginBtn extends StatelessWidget {
  final GlobalKey<FormState> _formKey;

  const LoginBtn(this._formKey);

  @override
  Widget build(BuildContext context) {
    var loginProvider = Provider.of<LoginProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: RaisedButton(
          onPressed: () => loginProvider.onLoginBtnPressed(_formKey),
          color: Colors.deepOrange,
          child: Text(
            'Login',
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

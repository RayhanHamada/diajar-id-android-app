import 'package:diajar/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginBtn extends StatelessWidget {
  void onPressed(LoginProvider loginProvider) {
    if (loginProvider.formKey.currentState.validate()) {
      loginProvider.formKey.currentState.save();

      if (loginProvider.goLogin()) {
        // go to after login page

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: RaisedButton(
          onPressed: () => onPressed(loginProvider),
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

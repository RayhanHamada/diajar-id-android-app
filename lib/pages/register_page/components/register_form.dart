import 'package:diajar/pages/register_page/components/to_login_page_btn.dart';
import 'package:diajar/pages/register_page/register_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:diajar/provider/register_provider.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    final registerHandler = RegisterHandler.of(context);
    return Form(
      key: registerHandler.formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: ListView(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.85,
              child: TextFormField(
                controller: registerHandler.fullnameController,
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
            ),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: TextFormField(
                controller: registerHandler.emailController,
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
            ),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: TextFormField(
                controller: registerHandler.passwordController,
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
            ),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: TextFormField(
                controller: registerHandler.passwordValController,
                validator: (passwordVal) =>
                    registerProvider.passwordValidationValidate(
                        passwordVal, registerHandler.passwordController.text),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
              child: FractionallySizedBox(
                widthFactor: 0.85,
                child: RaisedButton(
                  onPressed: () => _registerBtnOnPressed(context),
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
            ),
            ToLoginPageBtn()
          ],
        ),
      ),
    );
  }

  void _registerBtnOnPressed(BuildContext context) {
    final registerHandler = RegisterHandler.of(context);
    if (registerHandler.formKey.currentState.validate()) {
      registerHandler.formKey.currentState.save();
    }
  }
}

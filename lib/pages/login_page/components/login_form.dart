import 'package:diajar/pages/after_login_page/after_login_page.dart';
import 'package:diajar/pages/login_page/components/diajar_image.dart';
import 'package:diajar/pages/login_page/components/to_register_page_btn.dart';
import 'package:diajar/pages/login_page/login_handler.dart';
import 'package:diajar/provider/login_provider.dart';
import 'package:diajar/reusable_components/fade_route.dart';
import 'package:diajar/reusable_components/slide_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final loginHandler = LoginHandler.of(context);
    return Form(
      key: loginHandler.formKey,
      child: ListView(
        children: <Widget>[
          DiajarImage(),
          Column(
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 0.85,
                child: TextFormField(
                  controller: loginHandler.emailController,
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
              ),
              FractionallySizedBox(
                widthFactor: 0.85,
                child: TextFormField(
                  controller: loginHandler.passwordController,
                  validator: loginProvider.validatePassword,
                  onSaved: loginProvider.setPassword,
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                child: FractionallySizedBox(
                  widthFactor: 0.85,
                  child: RaisedButton(
                    onPressed: () => _loginBtnOnPressed(context),
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
              ),
              ToRegisterPageBtn(),
            ],
          ),
        ],
      ),
    );
  }

  void _loginBtnOnPressed(BuildContext context) {
    final loginHandler = LoginHandler.of(context);
    if (loginHandler.formKey.currentState.validate()) {
      loginHandler.formKey.currentState.save();
    }

    Navigator.pushReplacement(context, SlideRoute(page: AfterLoginPage()));
  }
}

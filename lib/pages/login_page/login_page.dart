import 'package:diajar/pages/register_page/register_page.dart';
import 'package:diajar/provider/test_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './../../utils/reg_patterns.dart';

class LoginPage extends StatelessWidget {
  static const LOGIN_PAGE = "/LoginPage";

  final formKey = GlobalKey<FormState>();
  var userEmail = "", userPassword = "";

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<TestProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
//          if (details.velocity.pixelsPerSecond.dx < -50) {
//            Navigator.pushNamed(context, RegisterPage.REGISTER_PAGE);
//          }
        },
        child: Container(
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: FractionallySizedBox(
                    alignment: Alignment.center,
                    widthFactor: 0.4,
                    child: Image.asset(
                      'assets/diajar.png',
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    FractionallySizedBox(
                      widthFactor: 0.85,
                      child: TextFormField(
                        validator: (email) {
                          if (!RegExp(emailPattern).hasMatch(email)) {
                            return "Masukkan email yang valid !";
                          } else if (email.isEmpty) {
                            return "Email tidak boleh kosong !";
                          }
                          return "";
                        },
                        onSaved: (email) {
                          userEmail = email;
                          print("email : $email");
                        },
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
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.85,
                      child: TextFormField(
                        validator: (password) {
                          if (password.isEmpty) {
                            return "Password tidak boleh kosong !";
                          } else if (password.length < 8) {
                            return "Masukkan Password yang valid !";
                          }
                          return null;
                        },
                        onSaved: (password) {
                          userPassword = password;
                          print("password : $userPassword");
                        },
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
                          onPressed: () {
                            if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                            }
                          },
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
                    Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Masuk Dengan Akun Google',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/g_logo.png'),
                          ),
                        ),
                      ),
                      onTap: () {
                        print('logo');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RegisterPage.REGISTER_PAGE,
                          );
                        },
                        child: Text(
                          'Belum punya akun?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

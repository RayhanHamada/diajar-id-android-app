import 'package:diajar/provider/test_provider.dart';
import 'package:diajar/utils/reg_patterns.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  static const REGISTER_PAGE = "/RegisterPage";
  final formKey = GlobalKey<FormState>();
  String userFullName = "";
  String userEmail = "";
  String userPassword = "";
  String userPassValidate = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: GestureDetector(
//        onHorizontalDragEnd: (details) {
//          if (details.velocity.pixelsPerSecond.dx > 100) {
//            Navigator.pop(context);
//          }
//        },
        child: Container(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ListView(
                children: <Widget>[
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: TextFormField(
                      validator: (fullname) {
                        if (fullname.isEmpty) {
                          return "Nama Lengkap tidak boleh kosong";
                        }
                        return null;
                      },
                      onSaved: (fullname) {
                        userFullName = fullname;
                        print("fullname : $userFullName");
                      },
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
                        print("email : $userEmail");
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
                          color: Colors.white,
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
                          return "Panjang Password harus lebih dari 8";
                        }
                        return "";
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
                          color: Colors.white,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: TextFormField(
                      validator: (password) {
                        if (password.isEmpty) {
                          return "Password tidak boleh kosong !";
                        } else if (password.length < 8) {
                          return "Panjang Password harus lebih dari 8";
                        }
                        return "";
                      },
                      onSaved: (passVal) {
                        userPassValidate = passVal;
                        print("password Validation : $userPassValidate");
                      },
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
                        onPressed: () {
                          if (formKey.currentState.validate()) {
                            formKey.currentState.save();
                          }
                        },
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          '< Kembali ke halaman login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:diajar/pages/login_page/diajar_image.dart';
import 'package:diajar/pages/login_page/email_txt.dart';
import 'package:diajar/pages/login_page/login_btn.dart';
import 'package:diajar/pages/login_page/password_txt.dart';
import 'package:diajar/pages/login_page/to_register_page_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const LOGIN_PAGE = "/LoginPage";

  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
      body: Container(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              DiajarImage(),
              Column(
                children: <Widget>[
                  EmailTxt(),
                  PasswordTxt(),
                  LoginBtn(_formKey),
//                    Flex(
//                      direction: Axis.horizontal,
//                      children: <Widget>[
//                        Expanded(
//                          child: Divider(
//                            thickness: 1,
//                            color: Colors.white30,
//                          ),
//                        ),
//                        Text(
//                          "OR",
//                          style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 15,
//                          ),
//                        ),
//                        Expanded(
//                          child: Divider(
//                            thickness: 1,
//                            color: Colors.white30,
//                          ),
//                        ),
//                      ],
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(top: 16),
//                      child: Text(
//                        'Masuk Dengan Akun Google',
//                        style: TextStyle(
//                          color: Colors.white,
//                        ),
//                      ),
//                    ),
//                    GestureDetector(
//                      child: Container(
//                        margin: const EdgeInsets.only(top: 8),
//                        width: 65,
//                        height: 65,
//                        decoration: BoxDecoration(
//                          color: Colors.white,
//                          image: DecorationImage(
//                            image: AssetImage('assets/g_logo.png'),
//                          ),
//                        ),
//                      ),
//                      onTap: () {
//                        print('logo');
//                      },
//                    ),
                  ToRegisterPageBtn(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

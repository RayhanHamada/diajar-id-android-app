import 'package:diajar/pages/register_page/components/register_form.dart';
import 'package:diajar/pages/register_page/register_handler.dart';
import 'package:diajar/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  static const REGISTER_PAGE = "/RegisterPage";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterProvider>(
      builder: (context) => RegisterProvider(),
      child: RegisterHandler(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(0x00, 0x26, 0x63, 1),
          body: Container(
            child: RegisterForm(),
          ),
        ),
      ),
    );
  }
}

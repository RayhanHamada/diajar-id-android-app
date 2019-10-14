import 'package:flutter/material.dart';

class ToLoginPageBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Text(
            '< Kembali ke halaman login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

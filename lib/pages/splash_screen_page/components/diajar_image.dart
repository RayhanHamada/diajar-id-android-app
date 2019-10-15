import 'package:flutter/material.dart';

class DiajarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.center,
      widthFactor: 0.4,
      child: Image.asset(
        'assets/diajar.png',
      ),
    );
  }
}

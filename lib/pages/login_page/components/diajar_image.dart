import 'package:flutter/material.dart';

class DiajarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100,
        bottom: 30,
      ),
      child: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 0.4,
        child: Image.asset(
          'assets/diajar.png',
        ),
      ),
    );
  }
}

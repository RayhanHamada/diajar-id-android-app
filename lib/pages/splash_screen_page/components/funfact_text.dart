import 'package:diajar/model/FunFact.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class FunFactText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      funfact[new Random().nextInt(funfact.length)],
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}

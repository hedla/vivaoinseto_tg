import 'package:flutter/material.dart';
class Textos extends StatelessWidget {
  String seutexto;
  @override
  Widget build(BuildContext context) {
    return Text(
      seutexto,
      style: TextStyle(
          color: Colors.red,
          backgroundColor: Colors.white,
          fontSize: 20
      ),
    );
  }
  Textos(this.seutexto);
}

import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String textoBotao;
  final void Function() onPressed;

  Botao(this.textoBotao, {required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: onPressed,
      color: Colors.lightBlueAccent,
        child: Text(textoBotao,style: TextStyle(
          color: Colors.black,
          ),
        ),
    );
  }
}

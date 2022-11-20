import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextosCentro extends StatelessWidget {
  String param;
  TextosCentro(this.param);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment(0.0, -0.5),
        child: Text(
          param,
          style: GoogleFonts.ubuntu(
              textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: Colors.lightBlueAccent
          ),
        )
    );
  }
}

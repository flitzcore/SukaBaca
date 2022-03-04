import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LargeText extends StatelessWidget {
  double size;
  final String text;
  Color color;
  LargeText ({Key? key,
    required this.text,
    this.color=Colors.black,
    this.size=20
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle:
          TextStyle(
            color: color,
            fontSize: size,
            fontWeight: FontWeight.bold
          )
      )
      );
  }
}
class BodyText extends StatelessWidget {
  double size;
  final String text;
  Color color;
  BodyText({
    Key? key,
    required this.text,
    this.color=Colors.black,
    this.size=30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.kanit(
            textStyle:
            TextStyle(
                color: color,
                fontSize: size,
                fontWeight: FontWeight.normal,
            )
        ),

    );
  }
}

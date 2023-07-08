// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButtons extends StatelessWidget {
  final String buttonText;
  final Color backColor;
  final Color textColor;
  final double textSizes;
  final Function btnClickedss;

  const CalculatorButtons(
      {required this.buttonText,
      required this.backColor,
      required this.textColor,
      required this.textSizes,
      required this.btnClickedss});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: SizedBox(
        width: 80,
        height: 80,
        child: TextButton(
            onPressed: () {
              btnClickedss(buttonText);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(backColor),
                foregroundColor: MaterialStateProperty.all<Color>(textColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
            child: Text(
              buttonText,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                fontSize: textSizes,
              )),
            )),
      ),
    );
  }
}

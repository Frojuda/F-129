// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:calculate_app/widgedts/buttonstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  int num1 = 0;
  int num2 = 0;
  String visibleText = "";
  String history = "";
  String resultss = "";
  String procces = "";

  void btnClickeds(String btnValues) {
    if (btnValues == "AC") {
      num1 = 0;
      num2 = 0;
      visibleText = "";
      history = "";
      resultss = "";
      procces = "";
    } else if (btnValues == "C") {
      num1 = 0;
      num2 = 0;
      visibleText = "";
      resultss = "";
    } else if (btnValues == "BACK") {
      resultss = visibleText.substring(0, visibleText.length - 1);
    } else if (btnValues == "/") {
      num1 = int.parse(visibleText);
      resultss = "";
      procces = btnValues;
    } else if (btnValues == "X") {
      num1 = int.parse(visibleText);
      resultss = "";
      procces = btnValues;
    } else if (btnValues == "-") {
      num1 = int.parse(visibleText);
      resultss = "";
      procces = btnValues;
    } else if (btnValues == "+") {
      num1 = int.parse(visibleText);
      resultss = "";
      procces = btnValues;
    } else if (btnValues == "=") {
      num2 = int.parse(visibleText);
      if (procces == "+") {
        resultss = (num1 + num2).toString();
        history = num1.toString() + procces + num2.toString();
      }
      if (procces == "-") {
        resultss = (num1 - num2).toString();
        history = num1.toString() + procces + num2.toString();
      }
      if (procces == "X") {
        resultss = (num1 * num2).toString();
        history = num1.toString() + procces + num2.toString();
      }
      if (procces == "/") {
        resultss = (num1 / num2).toString();
        history = num1.toString() + procces + num2.toString();
      }
    } else {
      if (visibleText.contains(",")) {
        String snc = visibleText + btnValues;
        resultss = snc.toString();
      } else {
        resultss = int.parse(visibleText + btnValues).toString();
      }
    }
    setState(() {
      visibleText = resultss;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hesap Makinesi"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                  )),
                ),
              ),
            ),
            Container(
                alignment: Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                  child: Text(
                    visibleText,
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  buttonText: "AC",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "C",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "BACK",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 24,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "/",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  buttonText: "7",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "8",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "9",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 24,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "X",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  buttonText: "4",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "5",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "6",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 24,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "-",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  buttonText: "1",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "2",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "3",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 24,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "+",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButtons(
                  buttonText: "0",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "00",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "000",
                  backColor: Colors.blueGrey,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
                CalculatorButtons(
                  buttonText: "=",
                  backColor: Colors.red,
                  textColor: Colors.white,
                  textSizes: 30,
                  btnClickedss: btnClickeds,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

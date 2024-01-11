import 'package:flutter/material.dart';

TextStyle mTextStyle11() {
  return TextStyle(
    fontSize: 40,
  );
}

TextStyle mTextStyle12({Color textColor = Colors.black, FontStyle textStyle = FontStyle.italic}) {
  return TextStyle(
    fontSize: 30,
    color: textColor,
    fontStyle: textStyle
  );
}
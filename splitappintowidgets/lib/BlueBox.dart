import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
        flex: 2,
        child: Container(
          color: Color.fromARGB(255, 4, 0, 255),
        )));
  }
}

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Text(
                  '$btnName',
                  style: textStyle,
                ),
              ],
            )
          : Text(
              '$btnName',
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21),
              bottomRight: Radius.circular(21),
            ),
          )),
    );
  }
}

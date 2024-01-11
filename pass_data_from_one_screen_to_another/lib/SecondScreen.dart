import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  var nameFromHome;

  SecondScreen(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Second Screen"),
        ),
        body: Center(
          child: Text("Welcome $nameFromHome"),
        ));
  }
}

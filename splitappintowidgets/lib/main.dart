import 'package:flutter/material.dart';
import 'package:splitappintowidgets/BlueBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Split"),
      ),
      body: Container(
        child: Column(children: [
          RedBox(),
          BlueBox(),
          GreenBox(),
          Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 54, 130, 244),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 199, 14, 199),
              )),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
        flex: 2,
        child: Container(
          color: Colors.red,
        )));
  }
}

class GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
        flex: 2,
        child: Container(
          color: Color.fromARGB(255, 9, 227, 16),
        )));
  }
}

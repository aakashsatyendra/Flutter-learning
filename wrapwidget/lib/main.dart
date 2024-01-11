import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 41, 6, 217),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 187, 48, 132),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 41, 6, 217),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 187, 48, 132),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 41, 6, 217),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 187, 48, 132),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 41, 6, 217),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 187, 48, 132),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

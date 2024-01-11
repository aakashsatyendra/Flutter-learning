import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  String result = "";
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Counter $count"),
            ElevatedButton(
                onPressed: () {
                  count++;
                  setState(() {});
                },
                child: Text("Click Me")),
            Container(
              color: Colors.blueGrey,
              child: Center(
                child: Column(children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2controller,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            result = (no1 + no2).toString();
                            setState(() {});
                          },
                          child: Text("Add")),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            result = (no1 - no2).toString();
                            setState(() {});
                          },
                          child: Text("Subtract")),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            result = (no1 * no2).toString();
                            setState(() {});
                          },
                          child: Text("Multiply")),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            result = (no1 ~/ no2).toString();
                            setState(() {});
                          },
                          child: Text("Divide")),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Text("Result : $result"),
                ]),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

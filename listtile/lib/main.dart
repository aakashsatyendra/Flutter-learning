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
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "fsdf",
      "sdfds",
      "fsdf",
      "sdfds",
      "fsdf",
      "sdfds",
      "fsdf",
      "sdfds",
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    "$index",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  backgroundImage: AssetImage("assets/images/ak18.jpg"),
                  backgroundColor: Colors.red,
                ),
                title: Text("${arrNames[index]}"),
                subtitle: Text("subtitle"),
                trailing: Icon(Icons.add),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 30,
                thickness: 1,
              );
            },
            itemCount: arrNames.length));
  }
}

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
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      // primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['One', 'Two', 'Tree', 'Four', 'Five', 'Six', 'Seven', 'Eight','Nine'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(arrNames[index]),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   // reverse: true,
      //   // scrollDirection: Axis.horizontal,
      // ),
      body: ListView.separated(itemBuilder: (context,index){
        return Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(arrNames[index]),
          );
      }, 
      itemCount: arrNames.length,
      separatorBuilder: (context, index){
        return Divider(height: 100, thickness: 4,);
      },),
    );
  }
}

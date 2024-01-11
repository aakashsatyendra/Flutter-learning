import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      debugShowCheckedModeBanner: false,
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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Center(
              child: Container(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Current Time => $time'),
                    Text('Current Year => ${time.year}'),
                    Text('Current day => ${time.day}'),
                    Text('Current Weekday => ${time.weekday}'),
                    Text('Current Hour => ${time.hour}'),
                    Text('Current Minute => ${time.minute}'),
                    Text('Current Minute => ${DateFormat('Hms').format(time)}', style: TextStyle(color: Colors.pink),),
                    Text('Current Minute => ${DateFormat('jms').format(time)}', style: TextStyle(color: Colors.pink),),
                    Text('Current Minute => ${DateFormat('yMMMMd').format(time)}', style: TextStyle(color: Colors.pink),),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text('Current Time'))
                  ]),
            ),
          )), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.limeAccent,
          //   child: Center(
          //     child: Text("Hello Devops!!",
          //     style: TextStyle(
          //       backgroundColor: Colors.deepOrangeAccent,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 25,
          //       color: Colors.lightBlue
          //     )
          //   ),
          // ),


          // child: Center(
          //     child: Center(
          //   child: TextButton(
          //     child: Text("Click here"),
          //     onPressed: () {
          //       print("button pressed!");
          //     },
          //     onLongPress: () {
          //       print("button long pressed");
          //     },
          //   ),
          // )),


        // child: Center(
        //       child: Center(
        //     child: ElevatedButton(
        //       child: Text("Elevate"),
        //       onPressed: () {
        //         print("button pressed!");
        //       },
        //       onLongPress: () {
        //         print("button long pressed");
        //       },
        //     ),
        //   )),


        // child: Center(
        //       child: Center(
        //     child: OutlinedButton(
        //       child: Text("Outline"),
        //       onPressed: () {
        //         print("button pressed!");
        //       },
        //       onLongPress: () {
        //         print("button long pressed");
        //       },
        //     ),
        //   )),


        child: Center(
              child: Center(
            child: Image.asset('assets/images/one.jpg'),
          )),
        ),
      ),
    );
  }
}

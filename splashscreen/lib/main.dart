import 'package:flutter/material.dart';
import 'package:splashscreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Splash"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/subject.jpg',
            width: 200,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Mai hoon subject urf Anand Bhai.",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Mai na sun sakta hoon, na bol sakta hoon, hahi chal sakta hoon. Bas dimag zinda hai, sharir mar gya hai.",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}

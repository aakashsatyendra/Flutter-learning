import 'package:customfont/ui_helper/util.dart';
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
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontFamily: 'FontMain', fontSize: 30, fontWeight: FontWeight.bold),
        )
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
        title: Text(widget.title),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text("Akash Singh", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize:12),),
            ),
            Container(
              child: Text("Akash Singh", style: mTextStyle11(),),
            ),
            Container(
              child: Text("Akash Singh", style: mTextStyle11().copyWith(fontFamily:'FontMain'),),
            ),
            Container(
              child: Text("Akash Singh", style: mTextStyle12(textColor: Colors.red, textStyle: FontStyle.normal ),),
            ),
            Container(
              child: Text("Akash Singh", style: mTextStyle12(),),
            ),
            Container(
              child: Text("Akash Singh", style: Theme.of(context).textTheme.headline1,),
            ),
            Container(
              child: Text("Akash Singh", style: Theme.of(context).textTheme.headline1,),
            ),
            Container(
              child: Text("Akash Singh", style: Theme.of(context).textTheme.headline1,),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

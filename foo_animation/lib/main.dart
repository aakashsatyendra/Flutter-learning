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
      debugShowCheckedModeBanner: false,
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
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 4), () {
    //   reload();
    // });
  }

  var _width = 200.0;
  var _height = 100.0;
  var _bgColor = Colors.blueGrey;
  bool flag = false;

  var _myOpacity = 1.0;
  bool flagOpac = true;

  bool isFirst = true;

  // reload() {
  //   setState(() {
  //     isFirst = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                color: _bgColor,
                width: _width,
                height: _height,
                curve: Curves.bounceOut,
                duration: Duration(milliseconds: 800),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        _bgColor = Colors.orange;
                        flag = false;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                        _bgColor = Colors.blueGrey;
                        flag = true;
                      }
                    });
                  },
                  child: Text("Animate")),
              SizedBox(
                height: 20,
              ),

              // animation opacity
              AnimatedOpacity(
                opacity: _myOpacity,
                duration: Duration(milliseconds: 600),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flagOpac) {
                        _myOpacity = 0.0;
                        flagOpac = false;
                      } else {
                        _myOpacity = 1.0;
                        flagOpac = true;
                      }
                    });
                  },
                  child: Text("close")),
              SizedBox(
                height: 20,
              ),

              // cross fade
              AnimatedCrossFade(
                duration: Duration(milliseconds: 600),
                firstChild: Container(
                  width: 200,
                  height: 100,
                  color: const Color.fromARGB(255, 243, 82, 33),
                ),
                secondChild: Container(
                  width: 200,
                  height: 100,
                  color: Color.fromARGB(255, 33, 243, 61),
                ),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isFirst) {
                        isFirst = false;
                      } else {
                        isFirst = true;
                      }
                    });
                  },
                  child: Text("Change Widget")),
            ],
          ),
        ));
  }
}

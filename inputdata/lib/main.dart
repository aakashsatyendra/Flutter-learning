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
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Center(
              child: Container(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: userNameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 3,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          suffixText: "User Exits!",
                          prefixIcon: Icon(Icons.mail),
                        ),
                      ),
                      Container(
                        height: 11,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: passwordController,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                )),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye,
                                  color: Colors.orange),
                              onPressed: () {},
                            ),
                            prefixIcon: Icon(Icons.key)),
                      ),
                      // TextField(
                      //   enabled: false,
                      //   decoration: InputDecoration(
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //       borderSide: BorderSide(
                      //         color: Colors.green,
                      //         width: 3,
                      //       )
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //       borderSide: BorderSide(
                      //         color: Colors.blue,
                      //       )
                      //     ),
                      //     disabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //       borderSide: BorderSide(
                      //         color: Colors.blue,
                      //       )
                      //     )
                      //   ),
                      // ),
                      Container(
                        height: 11,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            String uEmail = userNameController.text.toString();
                            String uPass = passwordController.text.toString();
                            print("$uEmail  ->  $uPass");
                          },
                          child: Text("Login"))
                    ],
                  ))),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

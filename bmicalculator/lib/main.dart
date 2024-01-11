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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.indigo.shade100;
  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "BMI",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 31,
              ),
              TextField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter your weight in kgs"),
                    prefixIcon: Icon(Icons.line_weight)),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: ftController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter your height (in feets)"),
                    prefixIcon: Icon(Icons.height_rounded)),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: inController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter your height (in inches)"),
                    prefixIcon: Icon(Icons.height_outlined)),
              ),
              SizedBox(
                height: 21,
              ),
              ElevatedButton(
                  onPressed: () {
                    var weight = wtController.text.toString();
                    var feet = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (weight != "" && feet != "" && inch != "") {
                      //BMI calc
                      var iWeight = int.parse(weight);
                      var iFeet = int.parse(feet);
                      var iInch = int.parse(inch);

                      var tInch = (iFeet * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iWeight / (tM * tM);

                      if (bmi > 25) {
                        bgColor = Colors.orange;
                        message = "You are overweight";
                      } else if (bmi < 18) {
                        bgColor = const Color.fromARGB(255, 202, 70, 61);
                        message = "You are underweight";
                      } else {
                        bgColor = Colors.green;
                        message = "You are in shape";
                      }

                      setState(() {
                        result = "Your BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required fields";
                      });
                    }
                  },
                  child: Text("Calculate")),
              SizedBox(
                height: 21,
              ),
              Text("Result: $result"),
              Text("$message")
            ]),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

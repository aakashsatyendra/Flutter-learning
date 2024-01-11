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
  late DateTime selectDate;
  late TimeOfDay selectTime;

  @override
  void initState() {
    super.initState();
    selectDate = DateTime.now();
    selectTime = TimeOfDay.now();
  }

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
            Text('Date = $selectDate'),
            Text('Time = $selectTime'),
            Container(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2025))
                      .then((datePicked) {
                    if (datePicked != null) {
                      setState(() {
                        selectDate = datePicked;
                      });
                    }
                  });
                },
                child: Text("Show Date")),
            ElevatedButton(
                onPressed: () async {
                  await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.input)
                      .then((timePicked) {
                    if (timePicked != null) {
                      setState(() {
                        selectTime = timePicked;
                      });
                    }
                  });
                },
                child: Text("Show Time"))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

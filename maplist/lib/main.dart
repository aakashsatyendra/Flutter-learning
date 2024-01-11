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
  var arrNames = [
    {
      'name': 'Alice Johnson',
      'contact': 'alice@example.com',
      'address': '123 Main Street, Cityville'
    },
    {
      'name': 'Bob Smith',
      'contact': 'bob@example.com',
      'address': '456 Oak Avenue, Townsville'
    },
    {
      'name': 'Charlie Brown',
      'contact': 'charlie@example.com',
      'address': '789 Pine Road, Villagetown'
    },
    {
      'name': 'David White',
      'contact': 'david@example.com',
      'address': '101 Maple Lane, Hamletville'
    },
    {
      'name': 'Eve Davis',
      'contact': 'eve@example.com',
      'address': '202 Cedar Street, Countryside'
    },
    {
      'name': 'Frank Wilson',
      'contact': 'frank@example.com',
      'address': '303 Birch Boulevard, Suburbia'
    },
    {
      'name': 'Grace Taylor',
      'contact': 'grace@example.com',
      'address': '404 Spruce Drive, Metropolis'
    },
    {
      'name': 'Harry Miller',
      'contact': 'harry@example.com',
      'address': '505 Pine Avenue, Riverside'
    },
    {
      'name': 'Ivy Lee',
      'contact': 'ivy@example.com',
      'address': '606 Oak Lane, Lakeside'
    },
    {
      'name': 'Jack Brown',
      'contact': 'jack@example.com',
      'address': '707 Elm Street, Hilltop'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
            children: arrNames
                .map((value) => ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['contact'].toString()),
                      trailing: Text(value['address'].toString()),
                    ))
                .toList()),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Kuya',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Kuya App'),
        ),
        body: const Center(
          child: Text('Hello World',
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

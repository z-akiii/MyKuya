import 'package:flutter/material.dart';
import 'package:mykuya/screens/cleaning_page.dart';
import 'package:mykuya/screens/delivery_page.dart';
import 'package:mykuya/screens/layout.dart';
import 'package:mykuya/screens/pet_page.dart';
import 'package:mykuya/screens/shopping_page.dart';

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
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        '/delivery' : (context) => DeliveryPage(),
        '/shopping' : (context) => ShoppingPage(),
        '/cleaning' : (context) => CleaningPage(),
        '/pet' : (context) => PetPage()
      },
      home: Layout(),
    );
  }
}


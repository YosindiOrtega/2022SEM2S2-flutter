import 'package:calculadora/pages/home.pages.dart';
import 'package:flutter/material.dart';
//Revisado
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      theme: ThemeData(
      primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

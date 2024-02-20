import 'package:RekaChain/Barchart.dart';
import 'package:RekaChain/dasboard.dart';
import 'package:RekaChain/AfterSales/AfterSales.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: barchat(),
    );
  }
}

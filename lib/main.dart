import 'package:RekaChain/AfterSales/AfterSales1.dart';
import 'package:RekaChain/ReportSTTPP.dart';
import 'package:RekaChain/dasboard.dart';
import 'package:RekaChain/logout.dart';
import 'package:RekaChain/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

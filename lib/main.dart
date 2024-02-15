<<<<<<< HEAD
import 'package:RekaChain/dasboard.dart';
import 'package:flutter/material.dart';
import 'package:RekaChain/login.dart';
=======
>>>>>>> 5f608a07466a6825b89d72aa7a4ba7144ce06a83
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
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
=======
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Profile());
>>>>>>> 5f608a07466a6825b89d72aa7a4ba7144ce06a83
  }
}

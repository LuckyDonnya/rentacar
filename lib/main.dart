import 'package:flutter/material.dart';
import 'package:rentacar/pages/home.dart';
import 'package:rentacar/menu.dart';
import 'package:rentacar/pages/profile.dart';
import 'package:rentacar/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}

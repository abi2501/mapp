import 'package:flutter/material.dart';
import 'package:mapp/screens/home.dart';
import 'package:mapp/util/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_/home/massenger_screen.dart';
// import 'package:test_/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessangerScreen(),
    );
  }
}
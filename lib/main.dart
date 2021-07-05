import 'package:flutter/material.dart';
import 'package:auto_journal/screens/home_screen.dart';

void main() {
  runApp(AutoJornalApp());
}

class AutoJornalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}

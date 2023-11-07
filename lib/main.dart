import 'package:flutter/material.dart';
import 'package:health_dashboard/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

/* ------------------------------- thememanger ------------------------------ */

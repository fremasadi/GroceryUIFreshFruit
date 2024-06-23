import 'package:flutter/material.dart';
import 'package:grocery/pages/Component/splash0.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash0(),
    );
  }
}

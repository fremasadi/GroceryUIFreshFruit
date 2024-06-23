import 'package:flutter/material.dart';
import 'package:grocery/pages/Component/splash1.dart';
import 'package:grocery/pages/splashscreen.dart';
import 'package:grocery/theme.dart';

class Splash0 extends StatefulWidget {
  const Splash0({super.key});

  @override
  _Splash0State createState() => _Splash0State();
}

class _Splash0State extends State<Splash0> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellowColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Center(
          child: Image.asset('assets/freshFruits.png'),
        ),
      ),
    );
  }
}

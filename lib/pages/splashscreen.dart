import 'package:flutter/material.dart';
import 'package:grocery/pages/Component/splash3.dart';
import 'package:grocery/theme.dart';
import 'Component/splash1.dart';
import 'Component/splash2.dart';
import 'package:grocery/pages/create_account_page.dart'; // Pastikan import CreateAccount

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    Splash1(),
    Splash2(),
    Splash3(),
  ];

  void _navigateToNextPage() {
    setState(() {
      if (_currentPage < _pages.length - 1) {
        _currentPage++;
      }
    });
  }

  void _navigateToPreviousPage() {
    setState(() {
      if (_currentPage > 0) {
        _currentPage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            child: _pages[_currentPage],
          ),
          if (_currentPage > 0)
            Positioned(
              left: 13,
              top: 40,
              child: IconButton(
                icon: Image.asset('assets/btnBack.png'),
                onPressed: _navigateToPreviousPage,
              ),
            ),
          if (_currentPage < _pages.length - 1 && _currentPage != 2)
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 318,
                  height: 60,
                  decoration: BoxDecoration(
                    color: lightYellowColor,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextButton(
                    onPressed: _navigateToNextPage,
                    child: Text('Next'),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

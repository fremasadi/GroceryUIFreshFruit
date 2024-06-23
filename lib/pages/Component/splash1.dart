import 'package:flutter/material.dart';
import 'package:grocery/theme.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 208.88),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Frame1.png'),
            SizedBox(
              height: 84.61,
            ),
            Text(
              'Welcome to Fresh Fruits',
              style: headingTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Grocery application',
              style: subHeadingTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\n  adipiscing elit, sed do eiusmod tempor',
              style: descTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Image.asset(
                    'assets/next.png',
                    width: 20,
                    height: 20,
                    color: index == 0 ? Color(0xff12B76A) : null,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

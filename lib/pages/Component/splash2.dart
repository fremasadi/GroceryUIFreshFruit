import 'package:flutter/material.dart';
import 'package:grocery/theme.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash2.png',
              width: MediaQuery.of(context).size.width,
              height: 400.05,
              fit: BoxFit.cover,
            ),
            Text(
              'We provide best quality\nFruits to your family',
              style: headingTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed ',
              style: descTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
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
                    color: index == 1 ? Color(0xff12B76A) : null,
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

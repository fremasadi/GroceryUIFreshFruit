import 'package:flutter/material.dart';
import 'package:grocery/pages/create_account_page.dart';
import 'package:grocery/theme.dart';

import '../../widget/bottom_item.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 36, right: 36),
              child: Image.asset(
                'assets/frame3.png',
                width: 303,
                height: 180,
              ),
            ),
            SizedBox(
              height: 132,
            ),
            Text(
              'Fast and responsibily\ndelivery by our courir',
              style: headingTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor',
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
                    color: index == 2 ? Color(0xff12B76A) : null,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 41,
            ),
            BottomItem(
              text: 'Create an account',
              color: Colors.black,
              colorText: Colors.white,
              colorBorder: null,
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
            ),
            SizedBox(
              height: 18,
            ),
            BottomItem(
              text: 'Login',
              color: Colors.white,
              colorText: Colors.black,
              colorBorder: Colors.black,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}

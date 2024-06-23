import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/pages/signup_account_screen.dart';
import 'package:grocery/theme.dart';

class AddAccountSuccess extends StatelessWidget {
  const AddAccountSuccess({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 461,
      width: 333,
      decoration: BoxDecoration(
        color: Color(0xfF2F2F2),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset('assets/congratulation.png'),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 53),
                    child: Column(
                      children: [
                        Text(
                          'Congratulation',
                          style: CongratulationTextStyle.copyWith(fontSize: 24),
                        ),
                        Text(
                          'Fremas adi',
                          style: interTextStyle.copyWith(
                              fontSize: 13,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(lightYellowColor),
                ),
                child: Text('Sign Up'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

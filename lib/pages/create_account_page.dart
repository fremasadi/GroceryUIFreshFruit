import 'package:flutter/material.dart';
import 'package:grocery/pages/add_account_succes_screen.dart';
import 'package:grocery/theme.dart';
import 'package:grocery/widget/bottom_item.dart';

import '../widget/form_input_card.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    // Text editing controllers for the input fields
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                'assets/Group 7.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay image
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                'assets/overlay.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned Container at the bottom
          Positioned(
            top: 375,
            left: 0,
            right: 0,
            child: Container(
              height: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 28, right: 28, top: 28),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create your account',
                          style: headingTextStyle.copyWith(fontSize: 20),
                        ),
                        Image.asset('assets/ic_close.png')
                      ],
                    ),
                    SizedBox(
                      height: 49,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FormInput(
                          height: 52,
                          width: 160,
                          controller: firstNameController,
                          hintText: 'nama',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        FormInput(
                          height: 52,
                          width: 160,
                          controller: lastNameController,
                          hintText: ('nama belakang'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FormInput(
                      height: 52,
                      width: double.infinity,
                      controller: emailController,
                      hintText: 'email',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FormInput(
                      height: 52,
                      width: double.infinity,
                      controller: passwordController,
                      hintText: 'password',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'By tapping Sign up you accept all \nterms and condition',
                      textAlign: TextAlign.center,
                      style: BlackTextStyle.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    BottomItem(
                      text: 'Create Account',
                      color: lightYellowColor,
                      colorText: Colors.black,
                      onPress: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: AddAccountSuccess(),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

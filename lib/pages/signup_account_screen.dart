import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/pages/home_screen.dart';
import 'package:grocery/pages/main_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 439,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: 419, // Slightly overlapping the image
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 50),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: InkWell(
                          child: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onTap: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                      obscureText: _isObscure,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                // Implement back navigation
              },
              child: Image.asset(
                'assets/btnBackWhite.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

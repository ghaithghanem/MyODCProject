import 'package:flutter/material.dart';

import 'login2.dart';
import 'onboarding1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap the Column with a SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 154, left: 20),
              width: 334,
              height: 242,
              child: Image.asset(
                'assets/images/login.png',
                height: 150,
                width: 300,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome to MyODC",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.99,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20), // Adjust the margin
              width: 335,
              height: 94,
              child: Text(
                "Welcome To MyODC where you can connect with us and get the latest updates about Orange Digital Center in your country and in the world.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: -0.28,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the other interface here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Onboarding1(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  width: 335,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF16E00),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.1),
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 20), // Adjust the margin
              width: 335,
              height: 40,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Color(0xFFFF7900),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

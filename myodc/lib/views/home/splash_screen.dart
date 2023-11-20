import 'package:flutter/material.dart';

import 'login_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to wait for 3 seconds before navigating to the next screen
   Future.delayed(Duration(seconds: 4), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Splash Image in the center
          Image.asset('assets/images/spalsh.png', width: 632, height: 212),
          SizedBox(height: 250),

          // Powered By text
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 0.0),
            child: Text(
              'Powered By',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Helvetica Neue',
                letterSpacing: -0.34,
                color: Colors.black,
              ),
            ),
          ),

          // Combined "Orange" and "Digital Center" text at the bottom with a common colored background
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Orange',
                    style: TextStyle(
                      color: Color(0xFFFF7900),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'Digital Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 155),
                  Image.asset('assets/images/Orange_small_logo.png', width: 32, height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
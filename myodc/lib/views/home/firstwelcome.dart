import 'package:flutter/material.dart';

class Firstwelcome extends StatelessWidget {
  const Firstwelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Color(0xFFF4F4F4),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Padding(
    padding: EdgeInsets.only(bottom: 10,top:250),
          child:Text(
            "Happy you're here!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.68,
              color: Colors.black,
            ),
          ),
        ),
      SizedBox(height: 10),
      Text(
        "Creating your awesome home feed...",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          letterSpacing: -0.32,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 20),
      Image.asset('assets/images/welcomepic.png'), // Replace with actual image path
      Spacer(),
      ]
    )
        )
    );
  }
}

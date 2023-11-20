import 'package:flutter/material.dart';

import 'onboarding2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  _Onboarding1 createState() => _Onboarding1();
}

class _Onboarding1 extends State<Onboarding1> {
  PageController _pageController = PageController(initialPage: 0);
  bool canSwipe = true; // Flag to control swiping

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: canSwipe ? PageScrollPhysics() : NeverScrollableScrollPhysics(),
        reverse: false,
        onPageChanged: (int page) {
          if (page == 1) {
            // If on the first page, disallow swiping back
            setState(() {
              canSwipe = false;
            });
          } else {
            // Allow swiping on other pages
            setState(() {
              canSwipe = true;
            });
          }
        },
        children: [
          // First Page
          Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Color(0xFFF4F4F4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 126, left: 5, bottom: 10),
                  width: 934,
                  height: 242,
                  child: Image.asset('assets/images/login.png'), // Replace with actual image path
                ),
                Container(
                  margin: EdgeInsets.only(top: 70, left: 20),
                  width: 335,
                  height: 100,
                  child: Text(
                    "Get your questions answered.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.99,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  width: 335,
                  height: 194,
                  child: Text(
                    "To always keep your curious self satisfied we provide you with a forum where you can ask and respond to questions and get awarded for it. You get responses from our wonderful community from all around the world.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: -0.28,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second Page (Replace this with your other interface)
          Onboarding2(
            onSwipeEnabled: (bool swipeEnabled) {
              setState(() {
                canSwipe = swipeEnabled;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

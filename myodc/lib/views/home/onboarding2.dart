import 'package:flutter/material.dart';

import 'login2.dart';

class Onboarding2 extends StatefulWidget {
  final Function(bool) onSwipeEnabled;

  const Onboarding2({Key? key, required this.onSwipeEnabled}) : super(key: key);

  @override
  _Onboarding2 createState() => _Onboarding2();
}

class _Onboarding2 extends State<Onboarding2> {
  PageController _pageController = PageController();
  bool canSwipe = true; // Flag to control swiping

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta! > 0 && canSwipe) {
            // Swiping right
            if (_pageController.page! < 1) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          } else if (details.primaryDelta! < 0) {
            // Swiping left
            // Check if not at the first page before allowing swiping left
            if (_pageController.page!.floor() > 0) {
              widget.onSwipeEnabled(true);
            }
          }
        },

        child: PageView(
          controller: _pageController,
          physics: canSwipe ? PageScrollPhysics() : NeverScrollableScrollPhysics(),
          reverse: false,
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Color(0xFFF4F4F4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 26),
                    width: 834,
                    height: 442,
                    child: Image.asset('assets/images/login.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 46, left: 20),
                    width: 335,
                    height: 40,
                    child: Text(
                      "Stay In Touch With Us",
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
                    margin: EdgeInsets.only(top: 10, left: 20),
                    width: 335,
                    height: 94,
                    child: Text(
                      "To keep you updated about our latest news and events you can set reminders and receive notifications about it.",
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
            // Add more pages as needed
            Login2Screen(
              onSwipeEnabled: (bool swipeEnabled) {
                widget.onSwipeEnabled(swipeEnabled);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}


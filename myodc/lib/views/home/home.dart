import 'package:flutter/material.dart';

import 'bookdetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _selectedButtonIndex = -1;
  bool isLiked = false;
  bool isLiked1 = false;
  bool isLiked2 = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 5, bottom: 10, top: 40),
          width: screenSize.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/tunicon.png',
                    width: 44,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Tunisia',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/iconperson.png',
                        width: 34,
                        height: 34,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCustomButton('All', 0),
                      SizedBox(width: 10),
                      _buildCustomButton('News', 1),
                      SizedBox(width: 10),
                      _buildCustomButton('Events', 2),
                      SizedBox(width: 10),
                      _buildCustomButton('Projects', 3),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'This Week',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.48,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,top:22),
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: -0.32,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.arrow_right),
                      ],
                    )
                  ),
                ],
              ),
              // Horizontal scrolling ListView
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),

                height: 380,
                width: 450, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCard('Card 1'),
                    _buildCard1('Card 2'),
                    _buildCard2('Card 3'),
                    _buildCard('Card 4'),
                    _buildCard2('Card 5'),
                    // Add more cards as needed
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String cardTitle) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 375,
      height: 430,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
                10.0), // Adjust the radius as needed
          ),

          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/ghaith.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Add more widgets as needed
                ],
              ),
              Positioned(
                top: 8,
                left: 320,
                child: GestureDetector(
                  onTap: () {
                    // Handle icon click
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    width: 31,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: isLiked ? Colors.red : Colors.white, width: 1),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 218,
                left: 13,
                child: Container(
                  width: 80,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 4),
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Events',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 147,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(5, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '#design',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 257,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(40, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '+3 more',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 248,
                left: 15,
                child: Container(
                  width: 151,
                  height: 32,
                  child: Text(
                    '2 Days ago',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.2,
                      color: Color(0xFFFD7901),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 266,
                left: 15,
                child: Container(
                  width: 300,
                  height: 43,
                  child: Text(
                    'Spring Dev: formations gratuites en développement',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 316,
                  left: 15,
                  child: Container(
                      width: 360,
                      height: 53,
                      child: Row(
                          children: [
                            Image.asset(
                              'assets/images/arrowtop.png',
                              width: 30, // Adjust the width as needed
                              height: 30, // Adjust the height as needed
                            ),
                            SizedBox(width: 6),
                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 6),
                            Image.asset(
                              'assets/images/message.png',
                              width: 45, // Adjust the width as needed
                              height: 45, // Adjust the height as needed
                            ),

                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 56),

                            ElevatedButton(
                              onPressed: () {
                                BookDetailsData bookDetailsData = BookDetailsData(
                                  imagePath: 'assets/images/ghaith.jpg',
                                  isLiked: isLiked,
                                  category: 'Events',
                                  date: '2 Days ago',
                                  title: 'Spring Dev: formations gratuites en développement',
                                  description: 'Your detailed description here...',
                                  onLikedChanged: (bool liked) {
                                    setState(() {
                                      isLiked = liked;
                                    });
                                  },
                                );

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BookDetails(data: bookDetailsData),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                primary: Color(0xFFFD7901),
                                minimumSize: Size(120, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Adjust the radius as needed
                                ),
                              ),
                              child: Text('Book my place ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.2,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]
                      )
                  )
              ),


            ],
          ),
        ),
      ),
    );

  }

  Widget _buildCustomButton(String text, int index) {
    bool isSelected = _selectedButtonIndex == index;

    return ElevatedButton(
      onPressed: () {
        // Handle button press
        setState(() {
          _selectedButtonIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.black : Colors.white,
        onPrimary: isSelected ? Colors.white : Colors.black,
        side: BorderSide(color: Colors.black, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Container(
              width: 12,
              height: 12,
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                color: Color(0xFFFF7900),
                shape: BoxShape.circle,
              ),
            ),
          Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildCard1(String cardTitle) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 375,
      height: 430,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
                10.0), // Adjust the radius as needed
          ),

          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/gg.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Add more widgets as needed
                ],
              ),
              Positioned(
                top: 8,
                left: 320,
                child: GestureDetector(
                  onTap: () {
                    // Handle icon click
                    setState(() {
                      isLiked1 = !isLiked1;
                    });
                  },
                  child: Container(
                    width: 31,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: isLiked1 ? Colors.red : Colors.white, width: 1),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: isLiked1 ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 218,
                left: 13,
                child: Container(
                  width: 80,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 4),
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Events',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 147,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(5, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '#design',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 257,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(40, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '+3 more',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 248,
                left: 15,
                child: Container(
                  width: 151,
                  height: 32,
                  child: Text(
                    '2 Days ago',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.2,
                      color: Color(0xFFFD7901),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 266,
                left: 15,
                child: Container(
                  width: 300,
                  height: 43,
                  child: Text(
                    'Spring Dev: formations gratuites en développement',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 316,
                  left: 15,
                  child: Container(
                      width: 360,
                      height: 53,
                      child: Row(
                          children: [
                            Image.asset(
                              'assets/images/arrowtop.png',
                              width: 30, // Adjust the width as needed
                              height: 30, // Adjust the height as needed
                            ),
                            SizedBox(width: 6),
                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 6),
                            Image.asset(
                              'assets/images/message.png',
                              width: 45, // Adjust the width as needed
                              height: 45, // Adjust the height as needed
                            ),

                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 56),

                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                primary: Color(0xFFFD7901),
                                minimumSize: Size(120, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Adjust the radius as needed
                                ),
                              ),
                              child: Text('Book my place ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.2,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]
                      )
                  )
              )

            ],
          ),
        ),
      ),
    );
  }


  Widget _buildCard2(String cardTitle) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 375,
      height: 430,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius as needed
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
                10.0), // Adjust the radius as needed
          ),

          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/work.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Add more widgets as needed
                ],
              ),
              Positioned(
                top: 8,
                left: 320,
                child: GestureDetector(
                  onTap: () {
                    // Handle icon click
                    setState(() {
                      isLiked2 = !isLiked1;
                    });
                  },
                  child: Container(
                    width: 31,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: isLiked2 ? Colors.red : Colors.white, width: 1),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: isLiked2 ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 218,
                left: 13,
                child: Container(
                  width: 80,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 4),
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Events',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 147,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(5, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '#design',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 208,
                left: 257,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                      minimumSize: Size(40, 25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '+3 more',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 248,
                left: 15,
                child: Container(
                  width: 151,
                  height: 32,
                  child: Text(
                    '2 Days ago',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.2,
                      color: Color(0xFFFD7901),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 266,
                left: 15,
                child: Container(
                  width: 300,
                  height: 43,
                  child: Text(
                    'Spring Dev: formations gratuites en développement',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 316,
                  left: 15,
                  child: Container(
                      width: 360,
                      height: 53,
                      child: Row(
                          children: [
                            Image.asset(
                              'assets/images/arrowtop.png',
                              width: 30, // Adjust the width as needed
                              height: 30, // Adjust the height as needed
                            ),
                            SizedBox(width: 6),
                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 6),
                            Image.asset(
                              'assets/images/message.png',
                              width: 45, // Adjust the width as needed
                              height: 45, // Adjust the height as needed
                            ),

                            Text(
                              '13',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.28,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 56),

                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                primary: Color(0xFFFD7901),
                                minimumSize: Size(120, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Adjust the radius as needed
                                ),
                              ),
                              child: Text('Book my place ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.2,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]
                      )
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
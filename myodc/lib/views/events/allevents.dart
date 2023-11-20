import 'package:flutter/material.dart';

class AllEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Events"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 51.0, left: 20.0),
                  width: 40.0,
                  height: 25.0,
                  child: Image.asset('assets/images/heart.png'), // Update with your image path
                ),
                Container(
                  margin: EdgeInsets.only(top: 54.0, left: 10.0),
                  width: 51.0,
                  height: 19.0,
                  child: Text(
                    "Tunisia",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.32,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 48.0, left: 255.0),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_image.png'), // Update with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 335.0,
              height: 40.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 48.0,
                    height: 18.0,
                    child: Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: -0.32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    width: 16.0,
                    height: 16.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                  ),
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text(
                    "News",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text(
                    "Events",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              "This week",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.48,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.0),
            InkWell(
              onTap: () {
                // Implement your action for View All
              },
              child: Text(
                "View All",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: -0.32,
                  color: Colors.black,
                ),
              ),
            ),
          

            SizedBox(height: 20.0),

            Expanded(
              child: ListView.builder(
                itemCount: 1, // Only one item in this example pleazzz
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20.0),
                    width: 320.0,
                    height: 178.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/images/login.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                          child: Text(
                            "Spring dev : Formation gratuite en développement",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.28,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              width: 24.0,
                              height: 24.0,
                              color: Colors.white,
                              child: Image.asset('assets/images/heart.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              width: 23.0,
                              height: 22.0,
                              // Add your text field here
                            ),
                            SizedBox(width: 10.0),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              child: Text(
                                "Book my place",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.32,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: AllEventsPage()));

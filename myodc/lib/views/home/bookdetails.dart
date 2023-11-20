import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  final BookDetailsData data;
  const BookDetails({Key? key, required this.data}) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Stack(
      children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        widget.data.imagePath,
        width: 450,
        height: 350,
        fit: BoxFit.cover,
      ),
    ),
            Positioned(
            top: 28,
            right: 28,
            child: GestureDetector(
            onTap: () {
            // Handle icon click
            setState(() {
            widget.data.onLikedChanged(!widget.data.isLiked);
            });
            },
            child: Container(
            width: 51,
            height: 50,
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
            color: widget.data.isLiked ? Colors.red : Colors.white,
            width: 1,
            ),
            ),
            child: Icon(
            Icons.favorite,
            color: widget.data.isLiked ? Colors.red : Colors.white,
            ),
            ),
            ),
            ),
      Positioned(
        top: 28,
        left: 28,
        child: GestureDetector(
            onTap: () {
              // Handle back arrow click
              Navigator.pop(context);
            },
            child: Container(
              width: 51,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Image.asset(
                'assets/images/arrowb.png',
                color: Colors.white,
              ),
            ),
        ),
      ),
          // Add more widgets as needed

      // ... other details
        ],
      ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
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
                      Container(
                margin: EdgeInsets.only(left: 10),
                child : Text(
                  widget.data.date,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.2,
                    color: Color(0xFFFD7901),
                  ),
                ),
                      ),
                Positioned(
                  left: 45,
                  child: Container(
                    margin: EdgeInsets.only(left: 10), // Adjust the margin as needed
                    child: Text(
                      widget.data.title,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.28,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 10),
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
                        widget.data.category,
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

                SizedBox(height: 10),
                Container(
                margin: EdgeInsets.only(left: 10),
               child:Text(
                  'Date and time',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.28,
                    color: Colors.grey,
                  ),
                ),
    ),
                SizedBox(height: 2),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Color(0xFF000000),
                        size: 35,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'From Apr 24 at 10:00 AM \nTo Apr 29 at 2:00 PM',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.28,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Spacer(), // Add spacer to push the next element to the right
                      Image.asset(
                        'assets/images/share.png',
                        width: 55,
                        height: 55,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Text(
                    'Orange Digital Center, Rue du Lac Biwa, Tunis',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.28,
                      color: Colors.orange
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                margin: EdgeInsets.only(left: 10),
               child: ElevatedButton(
                  onPressed: () {

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
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.2,
                      color: Colors.white,
                    ),
                  ),
                ),
                  ),
                SizedBox(height: 15),
                  Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Text(
                  'Ut sit amet est nulla. Integer sit amet nisl velit. Duis tortor enim, eleifend in porttitor a, v.  Nunc mollis sed sapien eget tincidunt.rat id, aliquam magna. Curabitur non arcu ac neque imperdiet aliquam. Sed nec nunc pharetra, laoreet nisl ac, aliquet tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: -0.28,
                    color: Color(0xFF000000),
                  ),
                ),
                  ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/iconperson.png',
                        width: 45,
                        height: 45,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'UserName',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.28,
                          color: Color(0xFF000000),
                        ),
                      ),
                       // Add spacer to push the next element to the right
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 19),
                  child:Text(
                    'Ut sit amet est nulla. Integer sit amet nisl velit. Duis tortor enim, eleifend in porttitor a, v.  luctus et ultrices posuere cubilia curae.',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: -0.28,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),

                  SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/iconperson.png',
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Write a comment...',
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Handle send button click
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      primary: Color(0xFFFD7901),
                      minimumSize: Size(390, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            4.0), // Adjust the radius as needed
                      ),
                    ),
                    child: Text('Show all comments',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

              ])


        ]
    ),
    ),
    );
  }
}
class BookDetailsData {
  final String imagePath;
  final bool isLiked;
  final String category;
  final String date;
  final String title;
  final String description;
  final Function(bool) onLikedChanged;

  BookDetailsData({
    required this.imagePath,
    required this.isLiked,
    required this.category,
    required this.date,
    required this.title,
    required this.description,
    required this.onLikedChanged,
  });
}


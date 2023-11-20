import 'package:flutter/material.dart';


class test extends StatefulWidget {
  const test({super.key});

  @override
  Testing createState() => Testing();
}

class Testing extends State<test> {
  bool isHomeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar Example'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: isHomeSelected ? Colors.white : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isHomeSelected = !isHomeSelected;
                });
              },
            ),
            // Add other navigation icons here
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: isHomeSelected ? Colors.orange : Colors.white,
          child: Center(
            child: Text(
              'Home Content',
              style: TextStyle(
                color: isHomeSelected ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

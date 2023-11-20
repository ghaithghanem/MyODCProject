import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myodc/views/home/settingscreen.dart';

import 'discfullscreen.dart';
import 'favoritescreen.dart';
import 'firstwelcome.dart';

import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;
  bool _showFirstWelcome = true;

  @override
  void initState() {
    super.initState();

    // Delay for 3 seconds and then hide the FirstWelcome screen
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _showFirstWelcome = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          _showFirstWelcome ? Firstwelcome() : _buildScreenForIndex(_selectedIndex),
          // Bottom navigation bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildGNav(),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenForIndex(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return FavoriteScreen();
      case 2:
        return DiscFullScreen();
      case 3:
        return SettingsScreen();
      default:
        return Container(); // Handle other cases as needed
    }
  }

  Widget _buildGNav() {
    return     Container(
      width: 562,
      height: 62,
      margin: EdgeInsets.only(left: 25, bottom: 30, right: 25, top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: GNav(
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        duration: Duration(milliseconds: 800),
        tabBackgroundColor: Colors.orange[800]!,
        tabs: [
          GButton(
            icon: Icons.home,
            onPressed: () {
              _handleTabChange(0);
            },
          ),
          GButton(
            icon: Icons.favorite,
            onPressed: () {
              _handleTabChange(1);
            },
          ),
          GButton(
            icon: Icons.disc_full,
            onPressed: () {
              _handleTabChange(2);
            },
          ),
          GButton(
            icon: Icons.settings,
            onPressed: () {
              _handleTabChange(3);
            },
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          _handleTabChange(index);
        },
      ),
    );
  }

  void _handleTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


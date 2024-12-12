import 'package:flutter/material.dart';

import '../../res/image.dart';
import 'course/course_screen.dart';
import 'feed/feedScreen.dart';

import 'groups/group_screen.dart';
import 'home/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0; // To track the selected tab index

  // List of screens for each Bottom Navigation item
  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    FeedScreen(),
    CourseScreen(),
    GroupScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _screens.elementAt(_selectedIndex), // Display current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Highlight selected tab
        onTap: _onItemTapped, // Handle tap on tab
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(AppImage.images),),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(AppImage.images1)),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage(AppImage.images2)),
            label: 'Groups',
          ),
        ],
      ),
    );
  }
}
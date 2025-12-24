import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Home/homeScreen.dart';
import 'package:instagram_clone/Screens/Profile/profilescreen.dart';
import 'package:instagram_clone/Screens/Search/searchscreen.dart';
import 'package:instagram_clone/Screens/heart/heartscreen.dart';
import 'package:instagram_clone/Screens/post/postscreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    Homescreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app), label: "Post"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Heart"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: "Profile")
        ],
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}

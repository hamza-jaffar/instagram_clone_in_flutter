import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Heart/followingscreen.dart';
import 'package:instagram_clone/Screens/Heart/likescreen.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // Custom Top Bar
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 5), // small height
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  // TabBar
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.white,
                    indicatorWeight: 0.1,
                    tabs: const [
                      Tab(text: "Following"),
                      Tab(text: "You"),
                    ],
                  ),
                ],
              ),
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  FollowingScreen(),
                  LikeScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/profile_build_stat.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/Widgets/profile_highlight.dart';
import 'package:instagram_clone/data.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Center username
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.CustomImage(imgUrl: "private_icon.png"),
                    const SizedBox(width: 5),
                    Text(
                      "hamza_jaffar",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Right menu icon
                Align(
                  alignment: Alignment.centerRight,
                  child: Uihelper.CustomImage(imgUrl: "menu_icon.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Uihelper.CustomImage(imgUrl: "profile.png"),
                  ),
                ),
                const Spacer(),
                buildStat("54", "Posts"),
                buildStat("834", "Followers"),
                buildStat("32", "Following"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hamza Jaffar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text("Digital goodies designer"),
                    SizedBox(width: 3),
                    Text("@pixsellz", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Text("Everything is designed."),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              width: 380,
              height: 32,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0XFF000000),
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text("Edit Profile"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              height: 90, // 👈 REQUIRED
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProfileHighlight(
                    title: "New",
                    image: "assets/images/plus.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Travel",
                    image: "assets/images/highlight_1.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Food",
                    image: "assets/images/highlight_2.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Work",
                    image: "assets/images/highlight_3.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Travel",
                    image: "assets/images/highlight_1.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Food",
                    image: "assets/images/highlight_2.png",
                  ),
                  SizedBox(width: 12),
                  ProfileHighlight(
                    title: "Work",
                    image: "assets/images/highlight_3.png",
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.grey.shade800, thickness: 1),
          // Tab Row
          SizedBox(
            height: 35, // match icon size + divider
            child: Row(
              children: [
                // Grid tab
                Expanded(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // align divider to bottom
                    children: const [
                      Icon(Icons.grid_view, size: 26),
                      SizedBox(height: 7,),
                      Divider(thickness: 1.5, color: Colors.white, height: 0),
                    ],
                  ),
                ),
                // Tagged tab
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(CupertinoIcons.profile_circled, size: 26),
                      SizedBox(height: 7,)
                    ],
                  ),
                ),
              ],
            ),
          ),

          // GridView
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return Image.network(
                  arrContent[index]["img"].toString(),
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

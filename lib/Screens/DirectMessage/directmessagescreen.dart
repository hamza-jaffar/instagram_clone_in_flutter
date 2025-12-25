import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/BottomNav/bottomnav.dart';
import 'package:instagram_clone/Screens/Home/homeScreen.dart';
import 'package:instagram_clone/Widgets/chat_item_list.dart';
import 'package:instagram_clone/data.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));
                }, icon: Icon(CupertinoIcons.chevron_back, size: 30)),
                Row(
                  children: [
                    Text(
                      "Hamza Jaffar",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(CupertinoIcons.chevron_down, size: 17),
                  ],
                ),
                Icon(CupertinoIcons.plus, size: 30),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade800, thickness: 1),

          // Wrap chat items in Expanded + ListView
          Expanded(
            child: ListView(
              children: activityData.map((data) {
                return ChatListItem(
                  username: data['username'],
                  message: data['message'],
                  time: data['created_at'],
                  profile_pic: data['profile_pic'],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/search_category_icon.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/data.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF262626),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: Uihelper.CustomImage(imgUrl: "search_icon.png"),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0Xff8E8E93),
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Uihelper.CustomImage(imgUrl: "live.png"),
            ],
          ),
          SizedBox(height: 10),
          // Horizontal categories
          SizedBox(
            height: 40, // fixed height for category items
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10), // optional
              children: [
                categoryItem("IGTV", "igtv.png"),
                const SizedBox(width: 10),
                categoryItem("Shop", "bag.png"),
                const SizedBox(width: 10),
                categoryItem("Style", null),
                const SizedBox(width: 10),
                categoryItem("Sports", null),
                const SizedBox(width: 10),
                categoryItem("Auto", null),
                const SizedBox(width: 10),
                categoryItem("Auto 2", null),
              ],
            ),
          ),
          SizedBox(height: 7,),
          // Grid of posts
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero, // remove default padding
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

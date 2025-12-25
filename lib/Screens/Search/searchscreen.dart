import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/search_category_icon.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_F2gtHze1bw0WE2lwnMWk1695uBfImJUP8Q&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmRC6T06vHOR5vWR9eHbC6r3OcSCVvof66A&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk7aiIqYwSNR3FlHmFviH8GoEY9atQsYPviw&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisep4P1YHqgeoiEsGRvA6j7Vuy5rGUKkIaA&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6Q-GayaGn6nptJrP8wXnzcgQemuBGqLL8mQ&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShVysRcBF1Y9EoZkyK74OKjvdIxlD2D8a92w&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRKFXnQPm3COQ9nPZiMmbhvfo-sAHvBozV_A&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShVysRcBF1Y9EoZkyK74OKjvdIxlD2D8a92w&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtFlYL4mbNhQQd4EHYbrQCYN2c8q29lH4XGA&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzY4ZhdaTaeaDiMrEl_YRU8_8txhzBh2hQcA&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ7cWfx4zVIRETGh7pexCv-PdNlGzeg2D3Eg&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAeLo78kHEnOXRha7Q1uqL9-z0muu4zkwPAw&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvS8XRlRIzQ_lvu0EZy88MrE-UkMYfDTPjYQ&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeW92uhOW5qa2UXup_kYk0CIE1nQnooGcLkA&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpicsnzLJzufb_ENOD7yNRdXcEOGK9A5_YIw&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMVQwrZ8vNKR524Sc48IssLPFFGUjqPporw&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe1qWOtpCw6FZjM4oeCbCRd2lqVwrFR3hqIg&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfvfdzlviNRbd_jUoULocgggXfwo1hS1sjEQ&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCLEPWiGUVXNSqUy7QjM8UhpBc6NNfVoeIgQ&s"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkdPFA6r_IbzQJcyXrKT5TSritv0S_iWwFmw&s"},
  ];

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
          SizedBox(
            height: 32,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                categoryItem("IGTV", "igtv.png"),
                SizedBox(width: 10),
                categoryItem("Shop", "bag.png"),
                SizedBox(width: 10),
                categoryItem("Style", null),
                SizedBox(width: 10),
                categoryItem("Sports", null),
                SizedBox(width: 10),
                categoryItem("Auto", null),
                SizedBox(width: 10),
                categoryItem("Auto 2", null),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                decoration: BoxDecoration(),
                child: Image.network(arrContent[index]["img"].toString(), fit: BoxFit.cover,),
              );
            }, itemCount: arrContent.length),
          )
        ],
      ),
    );
  }
}

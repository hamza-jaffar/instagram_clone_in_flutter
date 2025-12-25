import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

Widget categoryItem(String text, String? img) {
  return Container(
    height: 32,
    width: 75,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white24),
      borderRadius: BorderRadius.circular(3),
    ),
    child: Center(
      child: img == null
          ? Text(text)
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomImage(imgUrl: img),
          SizedBox(width: 4),
          Text(text),
        ],
      ),
    ),
  );
}

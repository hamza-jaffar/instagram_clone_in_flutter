import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Search Screen"),)
    );
  }
}

import 'package:flutter/material.dart';

class HomeStory extends StatelessWidget {
  final String title;
  final String image;
  final bool isLive;

  const HomeStory({
    super.key,
    required this.title,
    required this.image,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red, Colors.yellow, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  image,
                  // fit: BoxFit.cover,
                ),
              ),
              // isLive ? SizedBox(height: 15, width: 5,) :  const SizedBox.shrink(),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

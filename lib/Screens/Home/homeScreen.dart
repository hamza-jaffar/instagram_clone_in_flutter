import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/home_story.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/camera_icon.png", height: 30),
                  Image.asset("assets/images/logo_txt.png", height: 30),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/igtv_outline_live.png",
                        height: 30,
                      ),
                      const SizedBox(width: 8),
                      Image.asset("assets/images/send_icon.png", height: 30),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      children: [
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                          isLive: true,
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                          isLive: true,
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                        const SizedBox(width: 12),
                        HomeStory(
                          title: "Your Story",
                          image: "assets/images/highlight_1.png",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/profile.png",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "hamza_jaffar",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text("Sialkot, Pakistan"),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.more_horiz_outlined),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        Image.asset(
                          "assets/images/post.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.heart, size: 30),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.conversation_bubble,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    "assets/images/send_icon.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.bookmark_border_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/profile.png",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "hamza_jaffar",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text("Sialkot, Pakistan"),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.more_horiz_outlined),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        Image.asset(
                          "assets/images/post.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.heart, size: 30),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.conversation_bubble,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    "assets/images/send_icon.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.bookmark_border_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/profile.png",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "hamza_jaffar",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text("Sialkot, Pakistan"),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.more_horiz_outlined),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        Image.asset(
                          "assets/images/post.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.heart, size: 30),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.conversation_bubble,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    "assets/images/send_icon.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.bookmark_border_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

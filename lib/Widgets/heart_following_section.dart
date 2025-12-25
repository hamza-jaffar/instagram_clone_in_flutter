import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/heart_following_btn.dart';
import 'package:instagram_clone/utils/time_converter.dart';

class HeartFollowingSection extends StatelessWidget {
  final Map<String, dynamic> activity;

  const HeartFollowingSection({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Profile Image
        ClipOval(
          child: Image.asset(
            activity['profile_pic'],
            width: 44,
            height: 44,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),

        // Username + Message
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 14, color: Colors.white),
              children: [
                TextSpan(
                  text: "${activity['username']} ",
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: activity['message'],
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: " • ${timeAgo(activity['created_at'])}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Follow Button (only show if not already following)
        FollowButton(isFollowing: activity['is_following']),
      ],
    );
  }
}

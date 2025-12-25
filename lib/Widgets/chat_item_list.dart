import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/utils/time_converter.dart';

class ChatListItem extends StatelessWidget {
  final String username;
  final String message;
  final DateTime time;
  final String profile_pic;

  const ChatListItem({
    super.key,
    required this.username,
    required this.message,
    required this.time,
    required this.profile_pic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        children: [
          // Profile Image
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage(profile_pic)
            ),
          ),

          const SizedBox(width: 12),

          // Username + Message
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // Time
          Text(
            "• ${timeAgo(time)}",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),

          const SizedBox(width: 10),

          // Camera Icon
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey.shade600,
            size: 22,
          ),
        ],
      ),
    );
  }
}

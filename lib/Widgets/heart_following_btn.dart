import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  final bool isFollowing;

  const FollowButton({super.key, required this.isFollowing});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  late bool following;

  @override
  void initState() {
    super.initState();
    following = widget.isFollowing;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 28,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            following = !following;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
          following ? Colors.grey.shade800 : const Color(0xFF3797EF),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: following
                ? const BorderSide(color: Colors.grey)
                : BorderSide.none,
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          following ? "Following" : "Follow",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

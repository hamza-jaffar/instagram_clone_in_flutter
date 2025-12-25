import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/heart_following_section.dart';
import 'package:instagram_clone/Widgets/heart_time_header.dart';
import 'package:instagram_clone/data.dart';
import 'package:instagram_clone/utils/time_converter.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Group activities
    final Map<String, List<Map<String, dynamic>>> groupedActivities = {};

    for (final activity in activityData) {
      final category = activityCategory(activity['created_at']);
      groupedActivities.putIfAbsent(category, () => []);
      groupedActivities[category]!.add(activity);
    }

    final categoriesOrder = [
      "New",
      "Today",
      "This Week",
      "This Month",
      "This Year",
    ];

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      children: [
        Text("Following Request",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
        ),
        ...categoriesOrder
            .where((category) => groupedActivities.containsKey(category))
            .expand(
              (category) => [
                HeartTimeHeader(title: category),
                ...groupedActivities[category]!.map(
                  (activity) => Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: HeartFollowingSection(activity: activity),
                  ),
                ),
              ],
            )
            .toList(),
      ],
    );
  }
}

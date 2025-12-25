import 'package:flutter/material.dart';

Widget buildStat(String count, String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Text(count,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600)),
        Text(label),
      ],
    ),
  );
}

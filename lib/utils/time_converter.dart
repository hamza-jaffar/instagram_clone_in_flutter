String timeAgo(DateTime date) {
  final diff = DateTime.now().difference(date);

  if (diff.inMinutes < 60) return '${diff.inMinutes}m';
  if (diff.inHours < 24) return '${diff.inHours}h';
  if (diff.inDays < 7) return '${diff.inDays}d';
  if (diff.inDays < 30) return '${(diff.inDays / 7).floor()}w';
  return '${(diff.inDays / 30).floor()}mo';
}

String activityCategory(DateTime date) {
  final now = DateTime.now();
  final difference = now.difference(date);

  if (difference.inMinutes < 10) return "New";
  if (difference.inHours < 24) return "Today";
  if (difference.inDays < 7) return "This Week";
  if (difference.inDays < 30) return "This Month";
  return "This Year";
}

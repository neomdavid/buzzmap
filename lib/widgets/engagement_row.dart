import 'package:buzzmap/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EngagementRow extends StatelessWidget {
  const EngagementRow({
    super.key,
    required this.numLikes,
    required this.numComments,
    required this.numShares,
    this.themeMode = 'dark',
  });

  final int numLikes;
  final int numComments;
  final int numShares;
  final String themeMode;

  String formatCount(int count) {
    return count >= 1000 ? '${(count / 1000).toStringAsFixed(1)}k' : '$count';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor =
        themeMode == 'dark' ? Colors.white : theme.colorScheme.primary;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/heart.svg',
                  height: 20,
                  color: iconColor,
                ),
                const SizedBox(width: 6),
                Text(
                  formatCount(numLikes),
                  style: theme.textTheme.bodyMedium?.copyWith(color: iconColor),
                ),
              ],
            ),
            const SizedBox(width: 15),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/comment.svg',
                  height: 20,
                  color: iconColor,
                ),
                const SizedBox(width: 6),
                Text(
                  formatCount(numComments),
                  style: theme.textTheme.bodyMedium?.copyWith(color: iconColor),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/share.svg',
              height: 20,
              color: iconColor,
            ),
            const SizedBox(width: 4),
            Text(
              formatCount(numShares),
              style: theme.textTheme.bodyMedium?.copyWith(color: iconColor),
            ),
          ],
        ),
      ],
    );
  }
}

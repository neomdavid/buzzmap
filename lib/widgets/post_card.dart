import 'package:buzzmap/main.dart';
import 'package:buzzmap/widgets/engagement_row.dart';
import 'package:buzzmap/widgets/user_info_row.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String whenPosted;
  final String location;
  final String date;
  final String time;
  final String reportType;
  final String description;
  final int numLikes;
  final int numComments;
  final int numShares;
  final List<String> images;
  final String iconUrl; // Add iconUrl parameter

  const PostCard({
    super.key,
    required this.username,
    required this.whenPosted,
    required this.location,
    required this.date,
    required this.time,
    required this.reportType,
    required this.description,
    required this.numLikes,
    required this.numComments,
    required this.numShares,
    this.images = const <String>[],
    required this.iconUrl, // Add iconUrl parameter
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoRow(
                title: username,
                subtitle: whenPosted,
                iconUrl: iconUrl, // Pass iconUrl to UserInfoRow
                type: 'post',
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          '📍 Location: ',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          location,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          '🕒 Date & Time:',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '$date, $time',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          '⚠️ Report Type:',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          reportType,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Text(
                          '📝 Description',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          description,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    if (images.isNotEmpty) _buildImageGrid(images),
                    const SizedBox(height: 12),
                    Divider(
                      color: customColors?.surfaceLight,
                      thickness: .9,
                      height: 6,
                    ),
                    const SizedBox(height: 10),
                    EngagementRow(
                      numLikes: numLikes,
                      numComments: numComments,
                      numShares: numShares,
                      themeMode: 'light',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 8,
          color: Colors.grey[300],
        ),
      ],
    );
  }

  Widget _buildImageGrid(List<String> images) {
    if (images.isEmpty) return const SizedBox.shrink();

    if (images.length == 1) {
      return ClipRRect(
        child: Image.asset(
          images[0],
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
      );
    } else {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: images.length <= 2 ? 2 : 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      );
    }
  }
}

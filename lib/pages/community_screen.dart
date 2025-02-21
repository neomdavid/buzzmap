import 'package:buzzmap/widgets/appbar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Community',
        currentRoute: '/community',
      ),
      body: Center(
        child: Text('Community Screen Content Here'),
      ),
    );
  }
}

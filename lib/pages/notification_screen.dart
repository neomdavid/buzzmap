import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color textColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
              color: textColor),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: textColor),
            ),
            const Divider(color: Color.fromRGBO(36, 82, 97, 1), thickness: 1),
            const SizedBox(height: 10),
            Text(
              "This Week",
              style: TextStyle(
                color: Color.fromRGBO(36, 82, 97, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Color.fromRGBO(36, 82, 97, 1), thickness: 1),
          ],
        ),
      ),
    );
  }
}

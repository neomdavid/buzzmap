import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '/';

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNavButton(context, 'Home', '/', currentRoute),
            _buildNavButton(context, 'Go to Mapping', '/mapping', currentRoute),
            _buildNavButton(
                context, 'Go to Community', '/community', currentRoute),
            _buildNavButton(
                context, 'Go to Prevention', '/prevention', currentRoute),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
      BuildContext context, String text, String route, String currentRoute) {
    bool isActive = currentRoute == route;
    return ElevatedButton(
      onPressed: isActive ? null : () => Navigator.pushNamed(context, route),
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        foregroundColor: isActive ? Colors.black : Colors.white,
      ),
      child: Text(text),
    );
  }
}

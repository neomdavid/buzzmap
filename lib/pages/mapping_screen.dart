import 'package:flutter/material.dart';

class MappingScreen extends StatelessWidget {
  const MappingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mapping')),
      body: const Center(
        child: Text('Mapping Screen'),
      ),
    );
  }
}

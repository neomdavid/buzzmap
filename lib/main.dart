import 'package:buzzmap/pages/community_screen.dart';
import 'package:buzzmap/pages/home_screen.dart';
import 'package:buzzmap/pages/mapping_screen.dart';
import 'package:buzzmap/pages/prevention_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuzzMap App',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color.fromRGBO(36, 82, 97, 1),
          secondary: Color.fromRGBO(250, 221, 55, 1),
          surface: Color.fromRGBO(219, 235, 243, 1),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/mapping': (context) => const MappingScreen(),
        '/community': (context) => const CommunityScreen(),
        '/prevention': (context) => const PreventionScreen(),
      },
    );
  }
}

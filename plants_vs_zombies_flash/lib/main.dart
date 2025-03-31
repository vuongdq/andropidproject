import 'package:flutter/material.dart';
import 'package:plants_vs_zombies_flash/screens/home.dart';
import 'package:plants_vs_zombies_flash/screens/how_to_play.dart';
import 'package:plants_vs_zombies_flash/screens/play.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants vs Zombies Flash',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Plants vs Zombies Flash home'),
        '/play': (context) => PlayPage(),
        '/how_to_play': (context) => HowToPlayPage(), // Route mới
      },
    );
  }
}
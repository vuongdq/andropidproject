import 'package:flutter/material.dart';
import 'package:ninja_game/screens/home.dart';
import 'package:ninja_game/screens/how_to_play.dart';
import 'package:ninja_game/screens/play.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ninja Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Ninja Game HomePage'),
        '/play': (context) => PlayPage(),
        '/how_to_play': (context) => HowToPlayPage(), // Route mới
      },
    );
  }
}
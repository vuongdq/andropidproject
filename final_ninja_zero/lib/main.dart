import 'package:flutter/material.dart';
import 'package:final_ninja_zero/screens/home.dart';
import 'package:final_ninja_zero/screens/how_to_play.dart';
import 'package:final_ninja_zero/screens/play.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Ninja Zero',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Final Ninja Zero HomePage'),
        '/play': (context) => PlayPage(),
        '/how_to_play': (context) => HowToPlayPage(), // Route mới
      },
    );
  }
}
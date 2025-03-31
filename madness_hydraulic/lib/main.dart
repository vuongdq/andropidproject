import 'package:flutter/material.dart';
import 'package:madness_hydraulic/screens/home.dart';
import 'package:madness_hydraulic/screens/how_to_play.dart';
import 'package:madness_hydraulic/screens/play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madness Hydraulic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Madness Hydraulic Home Page'),
        '/play': (context) => PlayPage(),
        '/how_to_play': (context) => HowToPlayPage(), // Route mới
      },
    );
  }
}
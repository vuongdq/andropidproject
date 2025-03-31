import 'package:flutter/material.dart';
import 'package:the_last_stand_2/screens/home.dart';
import 'package:the_last_stand_2/screens/how_to_play.dart';
import 'package:the_last_stand_2/screens/play.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Last Stand 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'The Last Stand 2 HomePage'),
        '/play': (context) => PlayPage(),
        '/how_to_play': (context) => HowToPlayPage(), // Route mới
      },
    );
  }
}
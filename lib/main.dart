import 'package:flutter/material.dart';
import 'package:spiderverse_meme_app/screens/home_screen.dart';
import 'package:spiderverse_meme_app/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/homeScreen": (context) => const HomeScreen(),
        "/splashScreen": (context) => const SplashScreen()
      },
    );
  }
}

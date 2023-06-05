import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/homeScreen');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 42, 42),
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 30,
              top: 50,
              child: Image.asset("assets/icons/web.png"),
            )
                .animate(onComplete: (controller) => controller.repeat())
                .moveY(
                    begin: -10,
                    end: 10,
                    duration: 1000.milliseconds,
                    curve: Curves.easeInOut)
                .then()
                .moveY(begin: 10, end: -10),
            Positioned(
              left: 200,
              top: 200,
              child: Image.asset("assets/icons/web.png"),
            )
                .animate(onComplete: (controller) => controller.repeat())
                .moveY(
                    begin: -10,
                    end: 10,
                    duration: 1000.milliseconds,
                    curve: Curves.easeInOut)
                .then()
                .moveY(begin: 10, end: -10),
            Positioned(
              right: 200,
              top: 300,
              child: Image.asset("assets/icons/web.png"),
            )
                .animate(onComplete: (controller) => controller.repeat())
                .moveY(
                    begin: -10,
                    end: 10,
                    duration: 1000.milliseconds,
                    curve: Curves.easeInOut)
                .then()
                .moveY(begin: 10, end: -10),
            Positioned(
              right: 20,
              top: 400,
              child: Image.asset("assets/icons/web.png"),
            )
                .animate(onComplete: (controller) => controller.repeat())
                .moveY(
                    begin: -10,
                    end: 10,
                    duration: 1000.milliseconds,
                    curve: Curves.easeInOut)
                .then()
                .moveY(begin: 10, end: -10),
          ],
        ),
      ),
    );
  }
}

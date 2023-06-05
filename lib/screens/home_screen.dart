import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Appbar

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 42, 42),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/splashScreen");
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}

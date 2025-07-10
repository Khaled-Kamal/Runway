import 'package:flutter/material.dart';
import 'package:ranway/Pages/Splash.dart';

void main() {
  runApp(const Runway());
}

class Runway extends StatelessWidget {
  const Runway({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Splash(),
    );
  }
}


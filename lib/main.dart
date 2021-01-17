import 'package:flutter/material.dart';

import 'package:ghaith/page/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermarket',
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      home: SplashScreen(),
    );
  }
}

import 'package:basketball_points_app/screens/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


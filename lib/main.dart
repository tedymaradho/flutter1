import 'package:flutter/material.dart';
import 'package:udemy/screens/button_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-book App',
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}

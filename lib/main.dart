import 'package:flutter/material.dart';
import 'package:flutter_bottom_navbar/bottom_nav_bar.dart';
import 'package:flutter_bottom_navbar/bottom_nav_bar_first.dart';
import 'package:flutter_bottom_navbar/floating_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavDemo(),
    );
  }
}

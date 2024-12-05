import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/models/candi.dart';
import 'package:flutter_bottom_navigation/screen/detail_screen.dart';
import 'package:flutter_bottom_navigation/screen/favorite_screen.dart';
import 'package:flutter_bottom_navigation/screen/home_screen.dart';
import 'package:flutter_bottom_navigation/screen/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final candi = settings.arguments as Candi;
          return MaterialPageRoute(
              builder: (context) => DetailScreen(candi: candi));
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marchtask8/pageview_design2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page view',
      theme: ThemeData(
        useMaterial3: false,
      ),
      // home: PageViewDemo(),
      // home: Screen6(),
      home: const PageViewDesign2(),
    );
  }
}

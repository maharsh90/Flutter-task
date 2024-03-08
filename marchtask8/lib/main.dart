import 'package:flutter/material.dart';

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
      // home: PageView3(),
      // home: Screen6(),
      // home: Scree1day7(),
    );
  }
}

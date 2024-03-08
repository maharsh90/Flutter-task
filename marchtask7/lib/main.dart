import 'package:flutter/material.dart';
import 'package:marchtask7/day7.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
        ),
        title: 'pageview tabbar',
        home: Day7Screen()
        // home: Screen2day7()
        // home: Screen3day7(),
        );
  }
}

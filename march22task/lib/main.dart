import 'package:flutter/material.dart';
import 'package:march22task/wallpaper_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "wallpaper App",
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: WallPaperApp(),
    );
  }
}

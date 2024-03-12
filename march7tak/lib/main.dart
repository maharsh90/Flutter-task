import 'package:flutter/material.dart';
import 'package:march7tak/page_view_design2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Screen design",
      // home: TabBarViewDesign1(),
      home: PageViewDesign2(),
      // home: AlertDialogDesign3(),
    );
  }
}

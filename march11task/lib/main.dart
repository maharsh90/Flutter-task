import 'package:flutter/material.dart';
import 'package:march11task/tab_bar_design3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'sofia',
      ),
      // home: AlertDialogPage(),
      home: const TabBarDesign3(),
    );
  }
}

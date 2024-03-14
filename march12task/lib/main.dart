import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: Colors.pink,
  //     statusBarIconBrightness: Brightness.dark,
  //     statusBarBrightness: Brightness.dark,
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "sofia",
        useMaterial3: false,
      ),
      home: const LoginScreen(),
      // home: VestimateHomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task23/task1_drawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerTask1(),
  ));
}

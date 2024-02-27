import 'package:feb15_task/mode_task1.dart';
import 'package:feb15_task/theme/dark_theme.dart';
import 'package:feb15_task/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: lightTheme,
    darkTheme: darkTheme,
    home: ChangeMode(),
  ));
}

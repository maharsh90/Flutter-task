import 'package:flutter/material.dart';
import 'package:march4task/register_form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      title: 'Register',
      home: const RegisterFormPage(),
    );
  }
}
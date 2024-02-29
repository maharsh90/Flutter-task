import 'package:flutter/material.dart';

PreferredSizeWidget screenAppBar() {
  return AppBar(
    title: const Text(
      'Settings',
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.purpleAccent.shade700,
  );
}

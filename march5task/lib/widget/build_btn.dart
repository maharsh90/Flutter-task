import 'package:flutter/material.dart';

Widget buildBtn(VoidCallback onPressed) {
  return SizedBox(
    width: double.infinity,
    height: 40,
    child: ElevatedButton(onPressed: onPressed, child: const Text('Submit')),
  );
}

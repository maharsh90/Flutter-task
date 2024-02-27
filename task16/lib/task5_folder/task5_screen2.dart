import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TopOfEachPage1 extends StatelessWidget {
  const TopOfEachPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: 600,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            width: 200,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}

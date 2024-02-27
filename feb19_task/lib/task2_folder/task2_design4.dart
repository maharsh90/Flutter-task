import 'package:flutter/material.dart';

class TopOfEachPage4 extends StatelessWidget {
  const TopOfEachPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Stack',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 500,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 400,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

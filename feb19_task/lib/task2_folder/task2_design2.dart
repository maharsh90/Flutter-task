import 'package:flutter/material.dart';

class TopOfEachPage2 extends StatelessWidget {
  const TopOfEachPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Stack Widget & postional Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 320,
              width: 300,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Container(
              height: 320,
              width: 300,
              color: Colors.purple,
            ),
          ),
          Positioned(
              top: 30,
              left: 120,
              child: Text(
                'Green',
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              top: 50,
              left: 140,
              child: Text('Red', style: TextStyle(color: Colors.white))),
          Positioned(
              top: 80,
              left: 160,
              child: Text('Purple', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}

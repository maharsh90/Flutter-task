import 'package:flutter/material.dart';

class TopOfEachPage5 extends StatelessWidget {
  const TopOfEachPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Stack Widget'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 25,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    color: Colors.black,
                    blurRadius: 10,
                  )
                ],
                color: Colors.red,
              ),
              height: 500,
              width: 1000,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Container 1',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset(10, 10),
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ], color: Colors.green),
              height: 300,
              width: 200,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TopOfEachPage6 extends StatelessWidget {
  const TopOfEachPage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widgets'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 120,
              left: 60,
              child: Container(
                height: 450,
                width: 520,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                  ],
                  color: Colors.red,
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: RotatedBox(
                      quarterTurns: 5,
                      child: Text('Container 1',
                          style: TextStyle(color: Colors.white)),
                    )),
              ),
            ),
            Positioned(
              top: 110,
              left: 30,
              child: Container(
                height: 400,
                width: 450,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                  ],
                  color: Colors.green,
                ),
                child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Container 2',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Positioned(
              top: 90,
              left: 100,
              child: Container(
                height: 300,
                width: 420,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                  ],
                  color: Colors.blue,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Container 3',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

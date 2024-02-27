import 'package:flutter/material.dart';

class TopOfEachPage7 extends StatelessWidget {
  const TopOfEachPage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 600,
              width: 500,
              color: Colors.red,
            ),
            Container(
              height: 500,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              height: 390,
              width: 320,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}

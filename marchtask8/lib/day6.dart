import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 6"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Single\t',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  TextSpan(
                    text: ' Line ',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        backgroundColor: Colors.green),
                  ),
                  TextSpan(
                    text: ' Multiple',
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 25,
                      fontFamily: 'multi',
                      // fontStyle: FontStyle.italic,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: ' \tStyle',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

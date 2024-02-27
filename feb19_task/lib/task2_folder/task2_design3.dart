import 'package:flutter/material.dart';

class TopOfEachPage3 extends StatelessWidget {
  const TopOfEachPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutterasssets.com',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const SizedBox(
        height: 150,
        width: 250,
        child: CircleAvatar(
          backgroundImage: AssetImage("./images/laptop.jpg"),
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 120),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text('1', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}

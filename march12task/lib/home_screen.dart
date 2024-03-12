import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
            )),
        backgroundColor: Colors.pink.shade500,
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}

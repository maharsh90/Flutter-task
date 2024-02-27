import 'package:flutter/material.dart';

class Task3Screen1 extends StatelessWidget {
  const Task3Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('without back button & action'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Default FAB Button'),
            CircleAvatar(
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            )
          ],
        ),
      ),
    );
  }
}

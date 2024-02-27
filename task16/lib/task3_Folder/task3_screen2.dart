import 'package:flutter/material.dart';

class Task3Screen2 extends StatelessWidget {
  const Task3Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text('Center title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lable Fab button'),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {},
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

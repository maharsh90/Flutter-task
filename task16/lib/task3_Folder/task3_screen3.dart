import 'package:flutter/material.dart';

class Task3Screen3 extends StatelessWidget {
  const Task3Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text('search Toolbar'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Circle Border FAB'),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {},
                child: const Icon(Icons.sd_card_alert)),
          ],
        ),
      ),
    );
  }
}

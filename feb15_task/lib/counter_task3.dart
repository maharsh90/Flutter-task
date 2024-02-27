import 'package:feb15_task/counter_stateless.dart';
import 'package:flutter/material.dart';

class CounterPageApp extends StatefulWidget {
  const CounterPageApp({super.key});

  @override
  State<CounterPageApp> createState() => _CounterPageAppState();
}

class _CounterPageAppState extends State<CounterPageApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter App'),
      ),
      body: SizedBox(
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              '$count',
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'serif',
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                child: const Text('Reset')),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterStateless(),
                      ));
                },
                icon: const Icon(Icons.next_plan)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count = count + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

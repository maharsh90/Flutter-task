import 'package:flutter/material.dart';

int count = 0;

class CounterStateless extends StatelessWidget {
  const CounterStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterApp();
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('stateless Counter App'),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "${count}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Text('Reset')),
        ],
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

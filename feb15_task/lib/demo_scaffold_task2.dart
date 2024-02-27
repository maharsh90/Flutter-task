import 'package:feb15_task/counter_task3.dart';
import 'package:flutter/material.dart';

class DemoScaffold extends StatefulWidget {
  const DemoScaffold({super.key});

  @override
  State<DemoScaffold> createState() => _DemoScaffoldState();
}

class _DemoScaffoldState extends State<DemoScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Demo'),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.lightBlue,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_rounded)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.perm_contact_calendar)),
        ],
      ),
      body: const Center(child: Text("Hello")),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: 'person',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CounterPageApp(),
              ));
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

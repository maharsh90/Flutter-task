import 'package:feb22_task/task1_screen3.dart';
import 'package:flutter/material.dart';

class Task1_Screen2 extends StatelessWidget {
  const Task1_Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Container(
                      height: 20,
                      color: Colors.green,
                      child: const Text(
                        'Expanded',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.purple,
                  child: Center(
                    child: Container(
                        height: 20,
                        color: Colors.red,
                        child: const Text('Flexible')),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Container(
                      height: 20,
                      color: Colors.green,
                      child: const Text(
                        'Expanded',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Container(
                      height: 20,
                      color: Colors.green,
                      child: const Text(
                        'Expanded',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.purple,
                  child: Center(
                    child: Container(
                        height: 20,
                        color: Colors.red,
                        child: const Text('Flexible')),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.purple,
                  child: Center(
                    child: Container(
                        height: 20,
                        color: Colors.red,
                        child: const Text('Flexible')),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.purple,
                  child: Center(
                    child: Container(
                        height: 20,
                        color: Colors.red,
                        child: const Text('Flexible')),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Container(
                      height: 20,
                      color: Colors.green,
                      child: const Text(
                        'Expanded',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task1Screen3(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

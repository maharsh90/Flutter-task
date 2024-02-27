import 'package:feb20_task/task1_button_demo2.dart';
import 'package:flutter/material.dart';

class Task1ButtonDemo1 extends StatelessWidget {
  const Task1ButtonDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Text('Default Material Button'),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Material button with icon',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text('Disable Material Button'),
          ),
          const SizedBox(
            height: 5,
          ),
          const TextButton(
              onPressed: null,
              child: Text(
                'Disable Material button',
                style: TextStyle(color: Colors.black26),
              )),
          TextButton.icon(
              icon: const Icon(Icons.add),
              onPressed: null,
              label: const Text(
                'Disable Material button',
                style: TextStyle(color: Colors.black26),
              )),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              )),
              onPressed: () {},
              child: const Text('Border Material Button')),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                color: Colors.green,
              )),
              onPressed: () {},
              child: const Text('Rounded Material Button')),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              onPressed: () {},
              child: const Text('Customized Rounded Material Button')),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                color: Colors.blue,
              )),
              onPressed: () {},
              child: const Text('Customized textstyle of lable')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              onPressed: () {},
              child: const Text(
                'Color Fill Material Button',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task1ButtonDemo2(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

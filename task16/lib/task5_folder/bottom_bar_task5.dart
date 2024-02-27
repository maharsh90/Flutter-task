import 'package:flutter/material.dart';
import 'package:task16/task5_folder/task5_screen1.dart';
import 'package:task16/task5_folder/task5_screen2.dart';
import 'package:task16/task5_folder/task5_screen3.dart';
import 'package:task16/task5_folder/task5_screen4.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.arrow_upward_outlined),
            label: '',
          ),
          CircleAvatar(
            maxRadius: 25,
            minRadius: 25,
            backgroundColor: Colors.purple,
            child: NavigationDestination(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: '',
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.arrow_downward_rounded),
            label: '',
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: ''),
        ],
        indicatorColor: Colors.blue,
        selectedIndex: currentIndex,
      ),
      body: <Widget>[
        //first
        const screen1(),

        //second
        const screen2(),

        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),

        //third
        const screen3(),
        //four
        const screen4(),

        //fourth
      ][currentIndex],
    );
  }
}

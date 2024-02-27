import 'package:flutter/material.dart';
import 'package:task16/task3_Folder/task3_screen1.dart';
import 'package:task16/task3_Folder/task3_screen2.dart';
import 'package:task16/task3_Folder/task3_screen3.dart';
import 'package:task16/task3_Folder/task3_screen4.dart';

class TaskThreeBottomPage extends StatefulWidget {
  const TaskThreeBottomPage({super.key});

  @override
  State<TaskThreeBottomPage> createState() => _TaskThreeBottomPageState();
}

class _TaskThreeBottomPageState extends State<TaskThreeBottomPage> {
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
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(
              icon: Icon(Icons.screen_lock_landscape_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.browse_gallery), label: ''),
          NavigationDestination(icon: Icon(Icons.favorite), label: ''),
          NavigationDestination(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.dlf.pt/dfpng/middlepng/247-2479526_round-profile-picture-png-transparent-png.png"),
              ),
              label: ''),
        ],
        selectedIndex: currentIndex,
        indicatorColor: Colors.teal,
      ),
      body: <Widget>[
        //first
        const Task3Screen1(),
        //second
        const Task3Screen2(),
        //three
        const Task3Screen3(),
        //four
        const Task3Screen4(),
      ][currentIndex],
    );
  }
}

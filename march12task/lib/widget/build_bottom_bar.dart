import 'package:flutter/material.dart';

class BuildBottomBar extends StatefulWidget {
  const BuildBottomBar({super.key});

  @override
  State<BuildBottomBar> createState() => _BuildBottomBarState();
}

class _BuildBottomBarState extends State<BuildBottomBar> {
  int bottomSelectedIndex = 0;
  void ontap(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: ontap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "kasd",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.memory_sharp,
          ),
          label: "asd",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble,
          ),
          label: "asd",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "asd",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "asd",
        ),
      ],
      selectedItemColor: Colors.deepPurpleAccent,
      unselectedItemColor: Colors.grey,
      currentIndex: bottomSelectedIndex,
    );
  }
}

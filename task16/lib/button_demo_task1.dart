import 'package:flutter/material.dart';

List<String> stateList = ["Gujrat", "Delhi", "Goa", "Bombay"];

class ButtonDemo extends StatelessWidget {
  ButtonDemo({super.key});

  String dropDownValue = stateList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              focusColor: Colors.greenAccent,
              value: dropDownValue,
              items: stateList.map((element) {
                return DropdownMenuItem(
                    value: element,
                    child: Text(
                      element,
                      style: const TextStyle(color: Colors.black),
                    ));
              }).toList(),
              onChanged: (value) {},
              iconEnabledColor: Colors.green,
              dropdownColor: Colors.tealAccent,
              style: const TextStyle(
                fontFamily: 'serif',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              isExpanded: false,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.near_me),
              color: Colors.teal,
            ),
            InkWell(
              child: const Text('This is inkWell button'),
              onTap: () {},
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuEntry<int>>[
                  const PopupMenuItem(
                    child: Text('0'),
                    value: 0,
                  ),
                  const PopupMenuItem(
                    child: Text('1'),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text('2'),
                    value: 2,
                  ),
                ];
              },
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outline Button')),
          ],
        ),
      ),
    );
  }
}

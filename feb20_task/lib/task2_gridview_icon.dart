import 'package:feb20_task/task2_gridview_icon1.dart';
import 'package:flutter/material.dart';

List<Color> clr = [
  Colors.green,
  Colors.pink,
  Colors.pink.shade300,
  Colors.red.shade300,
  Colors.green.shade50,
  Colors.deepPurple,
  Colors.yellow.shade50,
  Colors.green.shade50,
  Colors.red.shade300,
  Colors.green.shade50,
  Colors.deepPurple,
  Colors.yellow.shade50,
  Colors.green.shade50,
  Colors.red.shade300,
  Colors.green.shade50,
];

List<String> iconName = [
  "Home",
  "Email",
  "Alarm",
  "Wallet",
  "Backup",
  "Book",
  "Camera",
  "Person",
  "Print",
  "Phone",
  "Notes",
  "Music",
  "Car",
  "Bicycle",
  "Boat"
];

List<IconData> icons = [
  Icons.home,
  Icons.email,
  Icons.alarm,
  Icons.wallet,
  Icons.backup,
  Icons.book,
  Icons.camera,
  Icons.person,
  Icons.print,
  Icons.phone,
  Icons.notes,
  Icons.music_note,
  Icons.car_crash,
  Icons.motorcycle,
  Icons.directions_boat,
];

class GridviewIconPage extends StatelessWidget {
  const GridviewIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: iconName.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            color: clr[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icons[index]),
                const SizedBox(
                  height: 5,
                ),
                Text(iconName[index].toString()),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GridviewIconPage1(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Day7Screen extends StatefulWidget {
  const Day7Screen({super.key});

  @override
  State<Day7Screen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Day7Screen>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    // const Screen1day6(),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Shop',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'News',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    ),
  ];

  late final TabController controller =
      TabController(length: widgets.length, initialIndex: index, vsync: this);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Slider'),
        centerTitle: true,
        bottom: TabBar(controller: controller, tabs: const [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.badge_outlined,
            size: 30,
          ),
          Icon(
            Icons.newspaper_outlined,
            size: 30,
          )
        ]),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(controller: controller, children: widgets),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              height: 80,
              width: 500,
              child: Center(
                child: TabPageSelector(
                  color: Colors.amber,
                  selectedColor: Colors.deepPurple,
                  indicatorSize: 25,
                  controller: controller,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TabBarViewDesign1 extends StatefulWidget {
  const TabBarViewDesign1({super.key});

  @override
  State<TabBarViewDesign1> createState() => _TabBarViewDesign1State();
}

class _TabBarViewDesign1State extends State<TabBarViewDesign1>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    Container(
      color: Colors.blue,
      child: const Center(
          child: Text("Home",
              style: TextStyle(color: Colors.white, fontSize: 40))),
    ),
    Container(
      color: Colors.red,
      child: const Center(
          child: Text(
        "Shop",
        style: TextStyle(color: Colors.white, fontSize: 40),
      )),
    ),
    Container(
      color: Colors.green,
      child: const Center(
          child: Text("News",
              style: TextStyle(color: Colors.white, fontSize: 40))),
    ),
  ];

  late TabController controller;
  int index = 0;
  @override
  void initState() {
    controller =
        TabController(length: widgets.length, initialIndex: index, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Icon(Icons.home),
            Icon(Icons.badge_outlined),
            Icon(Icons.newspaper_outlined)
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(controller: controller, children: widgets),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 500,
              color: Colors.black.withOpacity(0.5),
              child: TabPageSelector(
                color: Colors.grey,
                selectedColor: Colors.blue,
                indicatorSize: 20,
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

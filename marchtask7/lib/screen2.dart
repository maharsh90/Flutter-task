import 'package:flutter/material.dart';

class Screen2day7 extends StatefulWidget {
  const Screen2day7({super.key});

  @override
  State<Screen2day7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Screen2day7>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
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
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(color: Colors.white),
        height: 80,
        width: 450,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "MyLogo",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            TabPageSelector(
              color: Colors.amber,
              selectedColor: Colors.deepPurple,
              indicatorSize: 22,
              controller: controller,
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(controller: controller, children: widgets),
          // Positioned(
          //   bottom: 0,
          //   child:
          // ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TabBarDesign3 extends StatefulWidget {
  const TabBarDesign3({super.key});

  @override
  State<TabBarDesign3> createState() => _TabBarDesign3State();
}

class _TabBarDesign3State extends State<TabBarDesign3>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('List Item $index'),
          ),
        );
      },
    ),
    ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('List Item $index'),
          ),
        );
      },
    ),
  ];

  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 110,
            floating: true,
            title: const Text('Flutter Demo Home Page'),
            bottom: TabBar(
              labelStyle: const TextStyle(fontSize: 20),
              controller: controller,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Text('Page 1'),
                Text(
                  'Page 2',
                ),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(controller: controller, children: widgets),
    );
  }
}

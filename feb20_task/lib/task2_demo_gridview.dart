import 'package:feb20_task/task2_demo_listview.dart';
import 'package:flutter/material.dart';

class DemoGridviewPage extends StatelessWidget {
  const DemoGridviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Demo Gridview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  Text(
                    'This is title $index',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. "),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DemoListviewPage(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

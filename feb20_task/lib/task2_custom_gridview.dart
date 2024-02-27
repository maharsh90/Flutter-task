import 'package:feb20_task/task2_demo_gridview.dart';
import 'package:flutter/material.dart';

class CustomGridviewPage extends StatefulWidget {
  const CustomGridviewPage({super.key});

  @override
  State<CustomGridviewPage> createState() => _CustomGridviewPageState();
}

class _CustomGridviewPageState extends State<CustomGridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Custom gridview in flutter - Scaler Topics',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: index % 2 == 0 ? Colors.green : Colors.yellow,
              margin: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Center(
                child: Text(
                  "${index}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif'),
                ),
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DemoGridviewPage(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

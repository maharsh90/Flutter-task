import 'package:feb21_task/task1_screen3.dart';
import 'package:flutter/material.dart';

class Task2Screen2 extends StatefulWidget {
  const Task2Screen2({super.key});

  @override
  State<Task2Screen2> createState() => _Task2Screen2State();
}

class _Task2Screen2State extends State<Task2Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 120,
              margin: const EdgeInsets.all(10),
              child: AppBar(
                bottom: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.pinkAccent,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.pinkAccent,
                  tabs: [
                    Tab(
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text('Chat')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text('Status')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Text('Call')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Call List $index'),
                        subtitle: Text(
                          'Tab bar ui',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        trailing: Icon(
                          Icons.arrow_circle_right,
                          color: Colors.grey.shade500,
                        ),
                      );
                    },
                  ),
                  Center(child: Text("Second tabbar")),
                  Center(child: Text("third tabbar")),
                  //tab2
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task1Screen3(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

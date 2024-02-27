import 'package:feb21_task/task2_screen2.dart';
import 'package:flutter/material.dart';

class Task2Screen1 extends StatefulWidget {
  const Task2Screen1({super.key});

  @override
  State<Task2Screen1> createState() => _Task2Screen1State();
}

class _Task2Screen1State extends State<Task2Screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                Container(
                  color: Colors.grey.shade300,
                  height: 250,
                  child: Image.network(
                      "https://static.vecteezy.com/system/resources/thumbnails/027/254/720/small/colorful-ink-splash-on-transparent-background-png.png"),
                ),
                const ListTile(
                  leading: Icon(Icons.contacts_rounded),
                  title: Text('Contacts'),
                ),
                const ListTile(
                  leading: Icon(Icons.event),
                  title: Text('Events'),
                ),
                const ListTile(
                  leading: Icon(Icons.notes),
                  title: Text('Notes'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Steps'),
                ),
                const ListTile(
                  leading: Icon(Icons.child_care),
                  title: Text('Authors'),
                ),
                const ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Flutter Documentation'),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Useful links'),
                ),
                const ListTile(
                  leading: Icon(Icons.bug_report),
                  title: Text('Report an issue'),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            title: const Text(
              'My Profile',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.grey,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
                child: const Center(child: Text('Profile details goes here')),
              ),
              const ColoredBox(
                color: Colors.blue,
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 5,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.motorcycle,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.car_crash_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    color: Colors.red,
                    child: const Center(child: Text('Bike')),
                  ),
                  Container(
                    color: Colors.red,
                    child: const Center(child: Text('Car')),
                  ),
                ]),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task2Screen2(),
                  ));
            },
            child: const Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }
}

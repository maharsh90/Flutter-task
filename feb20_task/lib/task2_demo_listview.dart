import 'package:feb20_task/task2_featured_app.dart';
import 'package:flutter/material.dart';

class DemoListviewPage extends StatelessWidget {
  const DemoListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Demo Listview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.all(5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text(index.toString()),
              ),
              title: Text('This is title L$index'),
              subtitle: const Text('sdfsdf defaswefa sefae'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FeaturedPageApp(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

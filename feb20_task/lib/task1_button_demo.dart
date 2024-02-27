import 'package:feb20_task/task1_button_demo1.dart';
import 'package:flutter/material.dart';

class Task1ButtonDemo extends StatelessWidget {
  const Task1ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('PopupMenuButton'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                )),
            child: const Text(
              'Rounded color fill Material button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              )),
              child: const Text(
                'Gradient Material button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cloud_upload_rounded,
                color: Colors.blue,
                size: 50,
              )),
          ElevatedButton.icon(
              icon: const Icon(Icons.download_for_offline),
              onPressed: () {},
              label: const Text('Download')),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                size: 50,
              )),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor: Colors.green.shade300,
              radius: 28,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text('Mark as read')),
              const PopupMenuItem(child: Text('Mute notification')),
              const PopupMenuItem(child: Text('Settings')),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task1ButtonDemo1(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

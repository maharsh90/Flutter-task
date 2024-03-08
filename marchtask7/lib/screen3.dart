import 'package:flutter/material.dart';

class Screen3day7 extends StatelessWidget {
  const Screen3day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => const AlertDialog(
                          title: Text('Catagories'),
                          actions: [
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                color: Colors.amber,
                              ),
                              title: Text("Amber"),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                color: Colors.green,
                              ),
                              title: Text("Green"),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                color: Colors.blue,
                              ),
                              title: Text("Blue"),
                            ),
                          ],
                        ));
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.black))),
              child: const Text(
                "List Button",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

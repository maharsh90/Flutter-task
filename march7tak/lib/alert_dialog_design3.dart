import 'package:flutter/material.dart';

class AlertDialogDesign3 extends StatefulWidget {
  const AlertDialogDesign3({super.key});

  @override
  State<AlertDialogDesign3> createState() => _AlertDialogDesign3State();
}

class _AlertDialogDesign3State extends State<AlertDialogDesign3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                title: Text('Catagories'),
                content: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
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
                  ),
                ),
              ),
            );
          },
          child: const Text(
            'List Button',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

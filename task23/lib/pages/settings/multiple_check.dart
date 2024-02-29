import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MultipleChecks extends StatefulWidget {
  const MultipleChecks({super.key});

  @override
  State<MultipleChecks> createState() => _MultipleChecksState();
}

class _MultipleChecksState extends State<MultipleChecks> {
  bool microphone = false;
  bool location = true;
  bool haptics = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Multiple Checks",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: const Text('Microphone access'),
          trailing: Checkbox(
            value: microphone,
            onChanged: (value) {
              setState(() {
                microphone = value!;
                if (microphone) {
                  Fluttertoast.showToast(
                    msg: "you selected Microphone access",
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              });
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Location access'),
          trailing: Checkbox(
            value: location,
            onChanged: (value) {
              setState(() {
                location = value!;
                if (location) {
                  Fluttertoast.showToast(
                    msg: "you selected Location access",
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              });
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Haptics'),
          trailing: Checkbox(
              value: haptics,
              onChanged: (newValue) {
                setState(() {
                  haptics = newValue!;
                  if (haptics) {
                    Fluttertoast.showToast(
                      msg: "you selected Haptics",
                      toastLength: Toast.LENGTH_LONG,
                    );
                  }
                });
              }),
        ),
        const Divider(),
      ],
    );
  }
}

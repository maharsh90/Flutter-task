import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool cellularData = false;
  bool wifi = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: const Text(
            "Toggle",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: const Text('Cellular data'),
          trailing: Switch(
            value: cellularData,
            onChanged: (value) {
              setState(() {
                cellularData = value;
                if (cellularData) {
                  Fluttertoast.showToast(
                    msg: "you selected Cellular data",
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              });
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Wi-Fi'),
          trailing: Switch(
            value: wifi,
            onChanged: (value) {
              setState(() {
                wifi = value;
                if (wifi) {
                  Fluttertoast.showToast(
                    msg: "you selected Wi-Fi",
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              });
            },
          ),
        ),
        const Divider(),
      ],
    );
  }
}

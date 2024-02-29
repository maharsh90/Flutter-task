import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SingleCheck extends StatefulWidget {
  const SingleCheck({super.key});

  @override
  State<SingleCheck> createState() => _SingleCheckState();
}

class _SingleCheckState extends State<SingleCheck> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Single Check",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: const Text('Allow Notification'),
          trailing: Radio<int>(
              value: 1,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  Fluttertoast.showToast(
                    msg: "you selected allow notifications",
                    toastLength: Toast.LENGTH_LONG,
                  );
                });
              }),
        ),
        const Divider(),
        ListTile(
            title: const Text('Turn off notifications'),
            trailing: Radio<int>(
              value: 2,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  Fluttertoast.showToast(
                    msg: "you selected Turn off notifications",
                    toastLength: Toast.LENGTH_LONG,
                  );
                });
              },
            )),
        const Divider(),
      ],
    );
  }
}

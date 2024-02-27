import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool switch1 = true;
  bool switch2 = false;
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent.shade700,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Toggle",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Cellular data'),
                trailing: Switch(
                  value: switch1,
                  onChanged: (value) {
                    setState(() {
                      switch1 = value;
                      if (switch1) {
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
                  value: switch2,
                  onChanged: (value) {
                    setState(() {
                      switch2 = value;
                      if (switch2) {
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
              const Align(
                alignment: Alignment.topLeft,
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
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Multiple Checks",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Microphone access'),
                trailing: Checkbox(
                  value: val3,
                  onChanged: (value) {
                    setState(() {
                      val3 = value!;
                      if (val3) {
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
                  value: val4,
                  onChanged: (value) {
                    setState(() {
                      val4 = value!;
                      if (val4) {
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
                    value: val5,
                    onChanged: (newValue) {
                      setState(() {
                        val5 = newValue!;
                        if (val5) {
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
          ),
        ));
  }
}

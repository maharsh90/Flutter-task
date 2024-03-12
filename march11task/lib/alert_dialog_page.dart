import 'package:flutter/material.dart';
import 'package:march11task/navigation_design2.dart';
import 'package:march11task/widget/build_app_bar.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BuildView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigationDesign2(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class BuildView extends StatefulWidget {
  const BuildView({super.key});

  @override
  State<BuildView> createState() => _BuildViewState();
}

class _BuildViewState extends State<BuildView> {
  int selectedRadioVal = 1;
  bool redCheckbox = true;
  bool greenCheckbox = false;
  bool blueCheckbox = false;
  bool purpleCheckbox = false;
  bool orangeCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.pink.shade50,
                    title: const Text('Basic Dialog title'),
                    content: const SizedBox(
                      width: 50,
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'ok');
                        },
                        child: const Text(
                          'Ok',
                          style: TextStyle(color: Colors.black54),
                        ),
                      )
                    ],
                  ),
                );
              },
              child: const Text(
                'Info Dialog',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.pink.shade50,
                      title: const Text('Customer Agreement'),
                      content: const SizedBox(
                        width: 50,
                        child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Disagree');
                          },
                          child: const Text('Disagree',
                              style: TextStyle(color: Colors.black54)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Agree');
                          },
                          child: const Text('Agree',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  'Confirmation Dialog',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.pink.shade50,
                      title: const Text('Phone Ringtone'),
                      content: SizedBox(
                          width: 50,
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    leading: Radio(
                                      activeColor: Colors.pink.shade900,
                                      value: 1,
                                      groupValue: selectedRadioVal,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedRadioVal = value!;
                                        });
                                      },
                                    ),
                                    title: const Text('None'),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                      activeColor: Colors.pink.shade900,
                                      value: 2,
                                      groupValue: selectedRadioVal,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedRadioVal = value!;
                                        });
                                      },
                                    ),
                                    title: const Text('Classic rock'),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                      activeColor: Colors.pink.shade900,
                                      value: 3,
                                      groupValue: selectedRadioVal,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedRadioVal = value!;
                                        });
                                      },
                                    ),
                                    title: const Text('Monophonic'),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                      activeColor: Colors.pink.shade900,
                                      value: 4,
                                      groupValue: selectedRadioVal,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedRadioVal = value!;
                                        });
                                      },
                                    ),
                                    title: const Text('Luna'),
                                  ),
                                ],
                              );
                            },
                          )),
                    ),
                  );
                },
                child: const Text(
                  'Single Choice Dialog',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.pink.shade50,
                      title: const Text('Your preferred color'),
                      content: SizedBox(
                        width: 50,
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return Wrap(
                                  children: [
                                    ListTile(
                                      leading: Checkbox(
                                        activeColor: Colors.pink.shade900,
                                        value: redCheckbox,
                                        onChanged: (value) {
                                          setState(() {
                                            redCheckbox = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Red'),
                                    ),
                                    ListTile(
                                      leading: Checkbox(
                                        activeColor: Colors.pink.shade900,
                                        value: greenCheckbox,
                                        onChanged: (value) {
                                          setState(() {
                                            greenCheckbox = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Green'),
                                    ),
                                    ListTile(
                                      leading: Checkbox(
                                        activeColor: Colors.pink.shade900,
                                        value: blueCheckbox,
                                        onChanged: (value) {
                                          setState(() {
                                            blueCheckbox = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Blue'),
                                    ),
                                    ListTile(
                                      leading: Checkbox(
                                        activeColor: Colors.pink.shade900,
                                        value: purpleCheckbox,
                                        onChanged: (value) {
                                          setState(() {
                                            purpleCheckbox = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Purple'),
                                    ),
                                    ListTile(
                                      leading: Checkbox(
                                        activeColor: Colors.pink.shade900,
                                        value: orangeCheckbox,
                                        onChanged: (value) {
                                          setState(() {
                                            orangeCheckbox = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Orange'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Cancel');
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'ok');
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  'Multiple Choice Dialog',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ],
      ),
    );
  }
}

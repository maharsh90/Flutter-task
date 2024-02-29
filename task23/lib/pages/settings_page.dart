import 'package:flutter/material.dart';
import 'package:task23/pages/settings/multiple_check.dart';
import 'package:task23/pages/settings/single_check.dart';
import 'package:task23/pages/settings/toggle.dart';

import '../widget/common_appbar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: screenAppBar(),
        body: Container(
          margin: EdgeInsets.all(10),
          child: const Column(
            children: [
              Spacer(),
              Toggle(),
              Spacer(),
              SingleCheck(),
              Spacer(),
              MultipleChecks(),
            ],
          ),
        ));
  }
}

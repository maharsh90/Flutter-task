import 'package:flutter/material.dart';
import 'package:march4task/models/appcolor.dart';

AppColor appColor = AppColor();

PreferredSizeWidget buildAppBar(BuildContext context, String title,
    [IconData? ic]) {
  return AppBar(
    backgroundColor: appColor.darkRed,
    centerTitle: true,
    leading: ic == null
        ? const Icon(Icons.navigate_before)
        : IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.navigate_before)),
    title: Text(title),
  );
}

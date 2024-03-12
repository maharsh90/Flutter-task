import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    title: const Text(
      'Android - style alert dialog',
      style: TextStyle(color: Colors.black),
    ),
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
  );
}

import 'package:flutter/material.dart';

Widget buildTextFormField(String txt) {
  return Container(
    margin: EdgeInsets.all(16),
    child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: txt,
        labelStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

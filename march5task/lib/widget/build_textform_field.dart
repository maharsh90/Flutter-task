import "package:flutter/material.dart";

Widget buildTextFormField(
    String txt,
    TextInputType keyboardTxtType,
    String? Function(String? val) valid,
    TextCapitalization txtCap,
    TextInputAction txtInputAction) {
  return TextFormField(
    textInputAction: txtInputAction,
    textCapitalization: txtCap,
    validator: valid,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: keyboardTxtType,
    decoration: InputDecoration(
      hintText: txt,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

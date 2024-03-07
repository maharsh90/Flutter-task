import 'package:flutter/material.dart';

class buildDropBtnFormField extends StatefulWidget {
  List<String> lstOf;
  String values;
  String lblTxt;
  String? Function(String? val) validator;
  buildDropBtnFormField(
      {super.key,
      required this.lstOf,
      required this.values,
      required this.lblTxt,
      required this.validator});

  @override
  State<buildDropBtnFormField> createState() => _buildDropBtnFormFieldState();
}

class _buildDropBtnFormFieldState extends State<buildDropBtnFormField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          )),
      hint: Text(widget.lblTxt),
      items: widget.lstOf.map((String value) {
        return DropdownMenuItem(
            value: value,
            child: Row(
              children: [
                Text(value),
              ],
            ));
      }).toList(),
      onChanged: (value) {
        setState(() {
          widget.values = value!;
        });
      },
    );
  }
}

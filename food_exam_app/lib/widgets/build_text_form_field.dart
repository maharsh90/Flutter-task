import 'package:flutter/material.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';
import 'package:form_field_validator/form_field_validator.dart';

class buildTextFormField extends StatelessWidget {
  String txt;
  TextInputType textInputType;
  TextInputAction textInputAction;
  MultiValidator multiValidator;
  buildTextFormField(
      {required this.txt,
      required this.textInputType,
      required this.multiValidator,
      required this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      validator: multiValidator,
      decoration: InputDecoration(
        hintText: txt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColor().lightBlack,
          ),
        ),
      ),
    );
  }
}

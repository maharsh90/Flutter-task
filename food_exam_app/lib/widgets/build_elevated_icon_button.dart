import 'package:flutter/material.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';

class buildElevatedIconButton extends StatelessWidget {
  String txt;
  Color backgroundColor;
  Color txtColor;
  IconData icon;
  VoidCallback voidcallback;
  buildElevatedIconButton({
    required this.txt,
    this.backgroundColor = Colors.blue,
    required this.icon,
    required this.txtColor,
    required this.voidcallback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: backgroundColor,
      ),
      icon: Icon(
        icon,
        color: AppColor().white,
      ),
      onPressed: () {},
      label: Text(
        txt,
        style: TextStyle(
            color: txtColor, fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}

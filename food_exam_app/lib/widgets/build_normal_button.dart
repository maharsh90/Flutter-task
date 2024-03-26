import 'package:flutter/material.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';

class buildButton extends StatelessWidget {
  String txt;
  Color color;
  VoidCallback voidcallback;
  buildButton({
    required this.txt,
    this.color = Colors.blue,
    required this.voidcallback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColor.orange,
      ),
      onPressed: voidcallback,
      child: Text(
        txt,
        style: TextStyle(
            color: AppColor.white, fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}

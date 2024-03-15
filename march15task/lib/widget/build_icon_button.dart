import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildIconButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Container(
      width: 31,
      height: 31,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.5, 0.5),
              color: Colors.grey,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(10.r)),
      child: Icon(Icons.navigate_before),
    ),
  );
}

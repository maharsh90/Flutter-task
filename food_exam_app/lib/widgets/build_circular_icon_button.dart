import 'package:flutter/material.dart';

import '../ui_helper/app_color.dart';

class buildCircularIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback voidCallback;
  double size;
  buildCircularIconButton(
      {required this.icon, required this.voidCallback, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor().lightGrey,
      ),
      child: IconButton(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => FavouritePage(
          //       hotels: lstHotels[index],
          //     ),
          //   ),
          // );
        },
        icon: Icon(
          Icons.favorite_border,
          size: 17,
        ),
      ),
    );
  }
}

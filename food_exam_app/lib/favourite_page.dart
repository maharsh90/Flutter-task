import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/model/hotel.dart';

List<String> listOfCategories = ["Chicken", "Biriyani", "Asian"];

List<String> lstOfTabs = ["Description", "Reviews & Others"];

class FavouritePage extends StatefulWidget {
  Hotel hotels;
  FavouritePage({super.key, required this.hotels});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    Center(
      child: Text("sd"),
    ),
    Center(
      child: Text("sd"),
    ),
  ];

  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: lstOfTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 320,
            width: 390,
            child: Stack(
              children: [
                Image.asset(
                  widget.hotels.img,
                  width: 390,
                  fit: BoxFit.cover,
                  height: 320,
                ),
                Positioned(
                  top: 64,
                  left: 16,
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF1F1F1),
                    ),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 64,
                  right: 16,
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF1F1F1),
                    ),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.more_vert,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Row(
              children: List.generate(3, (int index) {
            return Container(
              alignment: Alignment.center,
              height: 31,
              width: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF1F1F1),
              ),
              margin: EdgeInsets.only(left: 8),
              child: Text(listOfCategories[index]),
            );
          }).toList()),
          12.verticalSpace,
          SizedBox(
            height: 52,
            width: 256,
            child: Text(
              widget.hotels.title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF323643),
              ),
            ),
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.navigation),
                  Text(widget.hotels.distance.toString() + " away from you"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  Text(widget.hotels.raings.toString() + " (1.1k+ Reviews)"),
                ],
              ),
            ],
          ),
          12.verticalSpace,
          Text("\$20.00 /per plate"),
          24.verticalSpace,
          // SizedBox(
          //   height: 25,
          //   width: 236,
          //   child: TabBar(
          //     controller: tabController,
          //     tabs: [
          //       Tab(
          //         text: "Description",
          //       ),
          //       Tab(
          //         text: "Reviews & Others",
          //       ),
          //     ],
          //   ),
          // ),
          // TabBarView(
          //   children: widgets,
          //   controller: tabController,
          // ),
        ],
      ),
    );
  }
}

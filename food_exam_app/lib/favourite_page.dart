import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/model/hotel.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';

import 'model/product.dart';

List<String> listOfCategories = ["Chicken", "Biriyani", "Asian"];

List<String> lstOfTabs = ["Description", "Reviews & Others"];

List<Product> lstProducts = [
  Product("images/Rectangle 6(2).png", "Naked Jackfruit Burrito Bowl - R", 2.2,
      4.9, 20.00),
  Product(
      "images/Rectangle 6(3).png", "NY Chicken Roll - Large", 2.2, 4.9, 20.00),
  Product(
      "images/Rectangle 6(4).png", "Kochchi Prawn Spaghetti", 2.2, 4.9, 20.00),
  Product("images/Rectangle 6(5).png",
      "Double Chicken & Cheese Fiesta - Pizza - L", 2.2, 4.9, 20.00),
];

class FavouritePage extends StatefulWidget {
  Hotel hotels;
  FavouritePage({super.key, required this.hotels});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        child: const Text(
            "Lorem ipsum dolor sit amet consectetur. Sit adipiscing maecenas malesuada lacus ultrices ac habitant. Enim tristique in integer euismod mauris aenean in. Odio sed gravida nunc non duis. Suspendisse ac lectus lobortis auctor aliquam nunc. Facilisis aliquet aliquam in mattis sapien pretium ornare. Read More..."),
      ),
    ),
    Container(
      child: const Center(
        child: Text("sd"),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.hotels.img,
                  width: 390,
                  fit: BoxFit.fill,
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
                      color: AppColor.lightGrey,
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
                      icon: const Icon(
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
                      color: AppColor.lightGrey,
                    ),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
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
                  color: AppColor.lightGrey,
                ),
                margin: const EdgeInsets.only(left: 8),
                child: Text(listOfCategories[index]),
              );
            }).toList()),
            12.verticalSpace,
            SizedBox(
              height: 52,
              width: ScreenUtil().screenWidth,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 52,
                      child: Text(
                        widget.hotels.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColor.lightBlack,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColor.orange,
                      ),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 24,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            8.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.navigation,
                        color: AppColor.lightBlack,
                      ),
                      Text("${widget.hotels.distance} away from you"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColor.yellow,
                      ),
                      Text("${widget.hotels.raings} (1.1k+ Reviews)"),
                    ],
                  ),
                ],
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$20.00",
                      style: TextStyle(
                          color: AppColor.lightBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                    TextSpan(
                      text: "  /per plate",
                      style: TextStyle(
                          color: AppColor.lightBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            24.verticalSpace,
            SizedBox(
              height: 25,
              width: double.infinity,
              child: TabBar(
                labelColor: AppColor.lightBlack,
                unselectedLabelColor: AppColor.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColor.orange,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Description",
                  ),
                  Tab(
                    text: "Reviews & Others",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              width: 358,
              child: TabBarView(
                controller: tabController,
                children: widgets,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Recommended you",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("View All"),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                height: 580,
                width: 390,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: lstProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      mainAxisExtent: 279),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                lstProducts[index].img,
                                fit: BoxFit.contain,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColor.lightGrey,
                                  ),
                                  child: IconButton(
                                    style: IconButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        12.verticalSpace,
                        Column(
                          children: [
                            SizedBox(
                              width: 170,
                              height: 30,
                              child: Text(
                                lstProducts[index].title,
                                style: const TextStyle(
                                  overflow: TextOverflow.visible,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            23.verticalSpace,
                            Row(
                              children: [
                                const Icon(
                                  Icons.navigation,
                                  size: 14,
                                ),
                                4.horizontalSpace,
                                Text(
                                  "${lstProducts[index].distance} away from you",
                                  style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.yellow,
                                  size: 14,
                                ),
                                4.horizontalSpace,
                                Text(
                                  "${lstProducts[index].rating} (1.1k +Reviews)",
                                  style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            6.verticalSpace,
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            lstProducts[index].price.toString(),
                                        style: TextStyle(
                                            color: AppColor.orange,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14),
                                      ),
                                      TextSpan(
                                        text: "  /per plate",
                                        style: TextStyle(
                                            color: AppColor.lightBlack,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColor.lightGrey,
                                  ),
                                  child: IconButton(
                                    style: IconButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

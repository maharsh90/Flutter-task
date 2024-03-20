import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/model/hotel.dart';

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
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Text(
            "Lorem ipsum dolor sit amet consectetur. Sit adipiscing maecenas malesuada lacus ultrices ac habitant. Enim tristique in integer euismod mauris aenean in. Odio sed gravida nunc non duis. Suspendisse ac lectus lobortis auctor aliquam nunc. Facilisis aliquet aliquam in mattis sapien pretium ornare. Read More..."),
      ),
    ),
    Container(
      child: Center(
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
      body: ScreenUtilInit(
        designSize: Size(390, 1385),
        child: SingleChildScrollView(
          child: Column(
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
                      Text(
                          widget.hotels.distance.toString() + " away from you"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Text(
                          widget.hotels.raings.toString() + " (1.1k+ Reviews)"),
                    ],
                  ),
                ],
              ),
              12.verticalSpace,
              Text("\$20.00 /per plate"),
              24.verticalSpace,
              SizedBox(
                height: 25,
                width: double.infinity,
                child: TabBar(
                  labelColor: Color(0xFF323643),
                  unselectedLabelColor: Color(0xFF8C9099),
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: tabController,
                  tabs: [
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
                  children: widgets,
                  controller: tabController,
                ),
              ),
              SizedBox(
                height: 630,
                width: 390,
                child: GridView.builder(
                  itemCount: lstProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 18,
                      crossAxisCount: 2,
                      mainAxisExtent: 259),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 359,
                      width: 170,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  lstProducts[index].img,
                                  width: 170,
                                  height: 152,
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
                                      color: Color(0xFFF1F1F1),
                                    ),
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: Icon(
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
                          Text(
                            lstProducts[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.navigation,
                                size: 14,
                              ),
                              Text(
                                lstProducts[index].distance.toString() +
                                    " away from you",
                                style: TextStyle(
                                    color: Color(0xFF8C9099),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFFFFC529),
                                size: 14,
                              ),
                              Text(
                                lstProducts[index].rating.toString() +
                                    " (1.1k +Reviews)",
                                style: TextStyle(
                                    color: Color(0xFF8C9099),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(lstProducts[index].price.toString() +
                                      "/per plate"),
                                ],
                              ),
                              40.horizontalSpace,
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFFF1F1F1),
                                    ),
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: Icon(
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
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 55,
                        width: 170,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.grey.shade300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
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
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.minimize,
                                    size: 17,
                                  ),
                                ),
                              ),
                              Text("2"),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
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
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 55,
                        width: 170,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Color(0xFFFE724C),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

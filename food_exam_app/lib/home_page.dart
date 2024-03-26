import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/favourite_page.dart';
import 'package:food_exam_app/ui_helper/app_color.dart';

import 'model/categories.dart';
import 'model/hotel.dart';
import 'model/product.dart';

List<String> currentLocation = [
  "1901 Thornridge Cir. Shiloh...",
  "india",
  "china"
];

String currentLoc = currentLocation.first;

List<Category> lstCategories = [
  Category("images/Rectangle 16(1).png", "Burger"),
  Category("images/Rectangle 17.png", "Broast"),
  Category("images/Rectangle 18.png", "Pizza"),
  Category("images/Rectangle 19.png", "Mexican"),
];

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

List<Hotel> lstHotels = [
  Hotel("images/Rectangle 6.png", "Egg Benedict with Capsicum", 2.2, 4.9),
  Hotel("images/Rectangle 6(5).png", "Kashmiri Biryani and Kacchi House", 2.2,
      4.9),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchController searchController = SearchController();
  int selectedIndex = 0;
  void onPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5)),
                height: 280,
                width: ScreenUtil().screenWidth,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.verticalSpace,
                      SizedBox(
                        height: 28,
                        width: 298,
                        child: Row(
                          children: [
                            Image.asset(
                              "./images/location.png",
                              height: 20,
                              width: 20,
                            ),
                            10.horizontalSpace,
                            DropdownButton(
                              icon: Image.asset(
                                "./images/chevron.png",
                                height: 20,
                                width: 20,
                              ),
                              underline: const SizedBox(),
                              value: currentLoc,
                              items: currentLocation.map(
                                (String item) {
                                  return DropdownMenuItem(
                                    child: Text(item),
                                    value: item,
                                  );
                                },
                              ).toList(),
                              onChanged: (value) {
                                setState(() {
                                  currentLoc = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      20.verticalSpace,
                      SizedBox(
                        height: 50,
                        width: ScreenUtil().screenWidth,
                        child: SearchAnchor(
                          builder: (context, controller) {
                            return SearchBar(
                              elevation: MaterialStateProperty.all(0),
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              side: const MaterialStatePropertyAll(
                                  BorderSide.none),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                AppColor.mediumGery,
                              ),
                              hintText: "Food, groceries, drinks, etc.",
                              hintStyle: MaterialStatePropertyAll(TextStyle(
                                color: AppColor.grey,
                              )),
                              controller: searchController,
                              onTap: () {
                                searchController.openView();
                              },
                              onChanged: (_) {
                                searchController.openView();
                              },
                              leading: IconButton(
                                onPressed: () {},
                                icon: Image.asset("./images/Vector(1).png"),
                              ),
                              trailing: const [
                                SizedBox(
                                  height: 34,
                                  width: 38,
                                  child: Card(
                                    child: Image(
                                      height: 13.5,
                                      width: 12,
                                      image: AssetImage("images/Vector.png"),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          suggestionsBuilder: (BuildContext context,
                              SearchController controller) {
                            return List<ListTile>.generate(5, (int index) {
                              return const ListTile();
                            });
                          },
                        ),
                      ),
                      16.verticalSpace,
                      SizedBox(
                        height: 130,
                        width: ScreenUtil().screenWidth,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: lstCategories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColor.lightGrey,
                                  ),
                                  height: 80,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        lstCategories[index].img.toString()),
                                  ),
                                ),
                                6.verticalSpace,
                                Text(
                                  lstCategories[index].name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              8.verticalSpace,
              Container(
                height: 360,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Nearby hotels",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
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
                        ),
                      ],
                    ),
                    6.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Exclusive restaurants deals near you",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey),
                      ),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      height: 229,
                      width: ScreenUtil().screenWidth,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 6),
                        scrollDirection: Axis.horizontal,
                        itemCount: lstHotels.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FavouritePage(
                                    hotels: lstHotels[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 230,
                              width: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        lstHotels[index].img,
                                        fit: BoxFit.fill,
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 15,
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: AppColor.lightGrey,
                                          ),
                                          child: IconButton(
                                            style: IconButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
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
                                  Spacer(),
                                  Text(
                                    lstHotels[index].title,
                                    style: TextStyle(
                                      color: AppColor.lightBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.navigation,
                                        size: 14,
                                      ),
                                      Text(
                                        "${lstHotels[index].distance} away from you",
                                        style: TextStyle(
                                            color: AppColor.grey,
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
                                        color: AppColor.yellow,
                                        size: 14,
                                      ),
                                      Text(
                                        "${lstHotels[index].raings} (1.1k +Reviews)",
                                        style: TextStyle(
                                            color: AppColor.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              8.verticalSpace,
              Container(
                height: 570,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
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
                          ),
                        ],
                      ),
                      Text(
                        "Explore best items and enjoy your meal",
                        style: TextStyle(
                            color: AppColor.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      15.verticalSpace,
                      Expanded(
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: lstProducts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 15,
                                  crossAxisCount: 2,
                                  mainAxisExtent: 249),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: AppColor.lightGrey,
                                          ),
                                          child: IconButton(
                                            style: IconButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
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
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.navigation,
                                      size: 14,
                                    ),
                                    Text(
                                      "${lstProducts[index].distance} away from you",
                                      style: TextStyle(
                                          color: AppColor.grey,
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
                                      color: AppColor.yellow,
                                      size: 14,
                                    ),
                                    Text(
                                      "${lstProducts[index].rating} (1.1k +Reviews)",
                                      style: TextStyle(
                                          color: AppColor.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "\$20.00",
                                            style: TextStyle(
                                                color: AppColor.orange,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14),
                                          ),
                                          TextSpan(
                                            text: "  /per plate",
                                            style: TextStyle(
                                                color: AppColor.grey,
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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 74,
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onPress,
            unselectedItemColor: AppColor.grey,
            selectedItemColor: AppColor.lightBlack,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Image.asset(
                    "./images/house.png",
                    color: selectedIndex == 0
                        ? AppColor.lightBlack
                        : AppColor.grey,
                  ),
                ),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Image.asset(
                    "./images/tag.png",
                    color: selectedIndex == 1
                        ? AppColor.lightBlack
                        : AppColor.grey,
                  ),
                ),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: Image.asset(
                        "./images/cart.png",
                        color: selectedIndex == 2
                            ? AppColor.lightBlack
                            : AppColor.grey,
                      ),
                    )),
                label: "df",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "df",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: "df",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

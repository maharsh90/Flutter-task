import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColor().white,
                    borderRadius: BorderRadius.circular(5)),
                height: 280,
                width: ScreenUtil().screenWidth,
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      height: 28,
                      width: 298,
                      child: Row(
                        children: [
                          const Icon(Icons.assistant_navigation),
                          DropdownButton(
                            underline: const SizedBox(),
                            value: currentLocation.first,
                            items: currentLocation.map(
                              (String item) {
                                return DropdownMenuItem(
                                  child: Text(item),
                                  value: item,
                                );
                              },
                            ).toList(),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: SizedBox(
                        height: 50,
                        width: ScreenUtil().screenWidth,
                        child: SearchAnchor(
                          builder: (context, controller) {
                            return SearchBar(
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                              ),
                              side: const MaterialStatePropertyAll(
                                  BorderSide.none),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                AppColor().mediumGery,
                              ),
                              hintText: "Food, groceries, drinks, etc.",
                              controller: searchController,
                              onTap: () {
                                searchController.openView();
                              },
                              onChanged: (_) {
                                searchController.openView();
                              },
                              leading: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                              ),
                              trailing: const [
                                Card(
                                  child: Icon(Icons.menu),
                                ),
                              ],
                            );
                          },
                          suggestionsBuilder: (BuildContext context,
                              SearchController controller) {
                            return List<ListTile>.generate(5, (int index) {
                              return const ListTile(
                                title: Text("Food, groceries, drinks, etc."),
                              );
                            });
                          },
                        ),
                      ),
                    ),
                    16.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: SizedBox(
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
                                    color: AppColor().lightGrey,
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
                    ),
                  ],
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
                          padding: EdgeInsets.only(left: 8.0),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Exclusive restaurants deals near you",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor().grey),
                      ),
                    ),
                    15.verticalSpace,
                    Container(
                      height: 229,
                      width: ScreenUtil().screenWidth,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: lstHotels.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 230,
                            width: 220,
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      lstHotels[index].img,
                                      width: 220,
                                      height: 160,
                                      fit: BoxFit.cover,
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
                                          color: AppColor().lightGrey,
                                        ),
                                        child: IconButton(
                                          style: IconButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FavouritePage(
                                                  hotels: lstHotels[index],
                                                ),
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.favorite_border,
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                8.verticalSpace,
                                SizedBox(
                                  height: 17,
                                  width: 220,
                                  child: Text(
                                    lstHotels[index].title,
                                    style: TextStyle(
                                      color: AppColor().lightBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                9.verticalSpace,
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
                                          color: AppColor().grey,
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
                                      color: AppColor().yellow,
                                      size: 14,
                                    ),
                                    Text(
                                      "${lstHotels[index].raings} (1.1k +Reviews)",
                                      style: TextStyle(
                                          color: AppColor().grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
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
                height: 667,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: AppColor().grey,
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
                                  mainAxisSpacing: 24,
                                  crossAxisSpacing: 18,
                                  crossAxisCount: 2,
                                  mainAxisExtent: 269),
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
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: AppColor().lightGrey,
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
                                  Text(
                                    lstProducts[index].title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.navigation,
                                        size: 14,
                                      ),
                                      Text(
                                        "${lstProducts[index].distance} away from you",
                                        style: TextStyle(
                                            color: AppColor().grey,
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
                                        color: AppColor().yellow,
                                        size: 14,
                                      ),
                                      Text(
                                        "${lstProducts[index].rating} (1.1k +Reviews)",
                                        style: TextStyle(
                                            color: AppColor().grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "\$20.00",
                                              style: TextStyle(
                                                  color: AppColor().orange,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14),
                                            ),
                                            TextSpan(
                                              text: "  /per plate",
                                              style: TextStyle(
                                                  color: AppColor().grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      40.horizontalSpace,
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: AppColor().lightGrey,
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
          height: 85,
          width: 390,
          child: SizedBox(
            height: 44,
            width: 356,
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: onPress,
              unselectedItemColor: AppColor().grey,
              selectedItemColor: AppColor().lightBlack,
              showSelectedLabels: false,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.house),
                  label: "df",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.perm_device_info),
                  label: "df",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: AppColor().orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: AppColor().white,
                    ),
                  ),
                  label: "df",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "df",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "df",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

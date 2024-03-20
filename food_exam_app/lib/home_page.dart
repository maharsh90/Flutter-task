import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_exam_app/favourite_page.dart';

import 'model/categories.dart';
import 'model/hotel.dart';
import 'model/product.dart';

List<String> currentLocation = [
  "1901 Thornridge Cir. Shiloh...",
  "india",
  "china"
];

List<Category> lstCategories = [
  Category("images/Rectangle16.png", "Burger"),
  Category("images/Group18172.png", "Broast"),
  Category("images/Group18173.png", "Pizza"),
  Category("images/Group18174.png", "Mexican"),
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
  Hotel(
      "images/Rectangle16.png", "Kashmiri Biryani and Kacchi House", 2.2, 4.9),
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
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              height: 297,
              width: 390,
              child: Column(
                children: [
                  20.verticalSpace,
                  SizedBox(
                    height: 28,
                    width: 298,
                    child: Row(
                      children: [
                        Icon(Icons.assistant_navigation),
                        DropdownButton(
                          underline: SizedBox(),
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
                  SizedBox(
                    height: 50,
                    width: 358,
                    child: SearchAnchor(
                      builder: (context, controller) {
                        return SearchBar(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ),
                          side: MaterialStatePropertyAll(BorderSide.none),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xFFEEEEEE),
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
                            icon: Icon(Icons.search),
                          ),
                          trailing: [
                            Card(
                              child: Icon(Icons.menu),
                            ),
                          ],
                        );
                      },
                      suggestionsBuilder:
                          (BuildContext context, SearchController controller) {
                        return List<ListTile>.generate(5, (int index) {
                          return ListTile(
                            title: Text("Food, groceries, drinks, etc."),
                          );
                        });
                      },
                    ),
                  ),
                  16.verticalSpace,
                  SizedBox(
                    height: 118,
                    width: 358,
                    child: ListView.builder(
                      itemCount: lstCategories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(6),
                          height: 80,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 80,
                                width: 85,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    lstCategories[index].img.toString()),
                              ),
                              6.verticalSpace,
                              Text(
                                lstCategories[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
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
              height: 340,
              width: 390,
              padding: EdgeInsets.all(16),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nearby hotels",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF323643),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  6.verticalSpace,
                  Text(
                    "Exclusive restaurants deals near you",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  15.verticalSpace,
                  Container(
                    height: 225,
                    width: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lstHotels.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  lstHotels[index].img,
                                  width: 220,
                                  height: 160,
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
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FavouritePage(
                                              hotels: lstHotels[index],
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.favorite_border,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              lstHotels[index].title,
                              style: TextStyle(
                                color: Color(0xFF323643),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: 0.5,
                              ),
                            ),
                            9.verticalSpace,
                            Row(
                              children: [
                                Icon(
                                  Icons.navigation,
                                  size: 14,
                                ),
                                Text(
                                  lstHotels[index].distance.toString() +
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
                                  lstHotels[index].raings.toString() +
                                      " (1.1k +Reviews)",
                                  style: TextStyle(
                                      color: Color(0xFF8C9099),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            16.horizontalSpace,
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            8.verticalSpace,
            Container(
              height: 627,
              width: 390,
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
                        Row(
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
                            Text("View All"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text("Explore best items and enjoy your meal"),
                    Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: lstProducts.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                        Text(lstProducts[index]
                                                .price
                                                .toString() +
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
                                            borderRadius:
                                                BorderRadius.circular(30),
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
            unselectedItemColor: Color(0xFF8C9099),
            selectedItemColor: Color(0xFF323643),
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.house),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_device_info),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFFFE724C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "df",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "df",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

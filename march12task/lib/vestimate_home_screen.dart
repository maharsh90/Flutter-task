import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:march12task/product_page.dart';
import 'package:march12task/widget/build_bottom_bar.dart';

class VestimateHomeScreen extends StatefulWidget {
  const VestimateHomeScreen({super.key});

  @override
  State<VestimateHomeScreen> createState() => _VestimateHomeScreenState();
}

class _VestimateHomeScreenState extends State<VestimateHomeScreen> {
  Map<IconData, String> myMap = {
    Icons.shopping_cart_outlined: "Buying",
    Icons.shop: "Selling",
    Icons.badge_sharp: "Trades",
    Icons.video_settings: "Videos",
    Icons.percent_outlined: "Deals",
    Icons.book: "Book",
  };

  Color clr = Colors.white;
  int selectedIndex = 0;

  int bottomSelectedIndex = 0;
  void ontap(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        elevation: 20.0,
        backgroundColor: Colors.white,
        title: Image.asset(
          "./logo/vestimate.png",
          height: 150,
          width: 150,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Choose your area",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: myMap.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 10,
                            spreadRadius: 3),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(),
                                ));
                        }
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Card(
                        elevation: selectedIndex == index ? 24 : 0,
                        color: selectedIndex == index
                            ? Colors.deepPurple
                            : Colors.white,
                        margin: const EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              myMap.keys.elementAt(index),
                              size: 30,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.deepPurpleAccent,
                            ),
                            Text(
                              myMap.values.elementAt(index),
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomBar(),
    );
  }
}

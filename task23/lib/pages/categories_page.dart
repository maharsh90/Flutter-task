import 'package:flutter/material.dart';
import 'package:task23/pages/category_all_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Mechanical Keyboard",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  // overlayColor: const MaterialStatePropertyAll(Colors.grey),
                  // unselectedLabelStyle: TextStyle(color: Colors.grey),
                  // tabAlignment: TabAlignment.fill,
                  splashBorderRadius: BorderRadius.circular(10),
                  labelColor: Colors.black,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  tabs: [
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Tab(
                        text: 'All',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Tab(
                        text: 'Razor',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Tab(
                        text: 'HP',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Tab(
                        text: 'Asus',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "385 Product(s) found",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Expanded(
                child: TabBarView(children: [
                  //tab1
                  CategoryAllPage(),
                  //tab2
                  Center(child: Text('hi')),
                  //tab3
                  Center(child: Text('hi')),
                  //tab4
                  Center(child: Text('hi')),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

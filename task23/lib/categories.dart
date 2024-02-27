import 'package:flutter/material.dart';
import 'package:task23/category_all.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorColor: Colors.red,
                  tabs: [
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Tab(
                        text: 'All',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Tab(
                        text: 'Razor',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Tab(
                        text: 'HP',
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Tab(
                        text: 'Asus',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
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

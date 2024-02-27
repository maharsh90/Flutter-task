import 'package:flutter/material.dart';

import 'category_class.dart';

List<Category> categoryList = [
  Category(
      "https://i0.wp.com/theictbook.com/wp-content/uploads/2018/09/keybd.png?fit=680%2C340&ssl=1",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$99.99"),
  Category(
      "https://www.charvolant.org/doug/xkb/html/img9.png",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$199.99"),
  Category(
      "https://images.unsplash.com/photo-1560762484-813fc97650a0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$299.99"),
  Category(
      "https://images.unsplash.com/photo-1587829741301-dc798b83add3?q=80&w=2065&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$9.99"),
  Category(
      "https://images.unsplash.com/photo-1618384887929-16ec33fab9ef?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$99.99"),
  Category(
      "https://images.unsplash.com/photo-1598662779094-110c2bad80b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGtleWJvYXJkfGVufDB8fDB8fHww",
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form",
      "\$99.99"),
];

class CategoryAllPage extends StatefulWidget {
  const CategoryAllPage({super.key});

  @override
  State<CategoryAllPage> createState() => _CategoryAllPageState();
}

class _CategoryAllPageState extends State<CategoryAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Image.network(
                      categoryList[index].imag,
                      height: 50,
                      width: 100,
                    ),
                    Text(categoryList[index].des),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      categoryList[index].price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.blue),
                        icon: const Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: Text(
                                'Selected item price: ${categoryList[index].price}'),
                            action:
                                SnackBarAction(label: 'undo', onPressed: () {}),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        label: const Text(
                          'Add to cart',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

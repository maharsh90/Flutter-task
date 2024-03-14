import 'package:flutter/material.dart';
import 'package:march12task/model/product.dart';
import 'package:march12task/widget/build_bottom_bar.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> categories = ["Featured Items", "Most Recent", "N"];
  List<String> lstImages = [
    "https://cdn-4.nikon-cdn.com/e/Q5NM96RZZo-RRZZFeeMiveET0gVQ--AxJI7g-xcLVdXQQXCzD-W_eCIMTShL7Pfk/Views/1634-Z50-front.png",
    "https://w7.pngwing.com/pngs/882/409/png-transparent-smart-watch-thumbnail.png",
    "https://tl.vhv.rs/dpng/s/457-4572991_amazon-echo-look-png-transparent-png.png"
  ];

  List<Product> product = [
    Product(
        "https://cdn-4.nikon-cdn.com/e/Q5NM96RZZo-RRZZFeeMiveET0gVQ--AxJI7g-xcLVdXQQXCzD-W_eCIMTShL7Pfk/Views/1634-Z50-front.png",
        "Nikon 600D Mirrorless",
        "\$344.99"),
    Product(
        "https://w7.pngwing.com/pngs/882/409/png-transparent-smart-watch-thumbnail.png",
        "WJPILIS Smart Wrist Watch",
        "\$199.99"),
    Product(
        "https://e7.pngegg.com/pngimages/454/349/png-clipart-amazon-echo-dot-3rd-generation-charcoal-electronics-amazon-best-sellers-thumbnail.png",
        "Echo Dot Kids Edition",
        "\$299.99"),
    Product(
        "https://tl.vhv.rs/dpng/s/457-4572991_amazon-echo-look-png-transparent-png.png",
        "Amazon Echo Look",
        "\$349.49"),
    Product(
        "https://w7.pngwing.com/pngs/224/523/png-transparent-computer-keyboard-laptop-keyboard-protector-tablet-computers-keyboard-pc-computer-keyboard-computer-laptop-thumbnail.png",
        "Amazon Keyboard",
        "\$449.49")
  ];

  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.deepPurpleAccent,
              size: 30,
            )),
        title: const Text(
          'Buyings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categories.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIdx = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0.5, 0.5),
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 12,
                          ),
                        ],
                        color: currentIdx == index
                            ? Colors.deepPurpleAccent
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: currentIdx == index
                                ? Colors.deepPurpleAccent
                                : Colors.blueGrey)),
                    margin: const EdgeInsets.all(20),
                    height: 35,
                    width: 120,
                    child: Center(
                        child: Text(
                      categories[index],
                      style: TextStyle(
                          color: currentIdx == index
                              ? Colors.white
                              : Colors.blueGrey),
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0.5, 0.5),
                        ),
                      ]),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(product[index].image),
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product[index].title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            product[index].price,
                            style:
                                const TextStyle(color: Colors.deepPurpleAccent),
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < lstImages.length; i++)
                                Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(lstImages[i]),
                                  ),
                                )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: product.length),
      bottomNavigationBar: const BuildBottomBar(),
    );
  }
}

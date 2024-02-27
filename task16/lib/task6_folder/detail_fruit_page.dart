import 'package:flutter/material.dart';

class DetailFruitPage extends StatelessWidget {
  String fruitImg;
  DetailFruitPage({super.key, required this.fruitImg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detail Friut page'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                fruitImg.toString(),
                height: 300,
                width: 300,
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(
                    "https://media.istockphoto.com/id/184991186/photo/kiwi-isolated.webp?b=1&s=170667a&w=0&k=20&c=WNVBpYwcCY9AiAkJp9iqhQQCZGmOm2NqCbE0FHK4PV0=",
                    height: 300),
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  "https://freshsensations.com.au/cdn/shop/products/KiwiFruit.png?v=1643769428",
                  height: 300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

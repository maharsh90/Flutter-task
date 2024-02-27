import 'package:feb22_task/responsive/desktop_body.dart';
import 'package:feb22_task/responsive/mobile_body.dart';
import 'package:feb22_task/responsive/responsive_layout.dart';
import 'package:feb22_task/task1_screen2.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/1280px-A_small_cup_of_coffee.JPG",
  "https://www.comunicaffe.com/wp-content/uploads/2014/12/Coffee-White-Cup.jpg",
  "https://www.gannett-cdn.com/presto/2022/07/08/USAT/f92b64f9-fca7-43e4-a0b0-9f0b936640db-GettyImages-1333814244.jpg",
  "https://cdn.mos.cms.futurecdn.net/ZZKgZkZZNFFABG2B4J66HF.jpg",
  "https://www.verywellfit.com/thmb/AWAl9zhk4txKmKNXAJhGOOzuwsk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-941897350-5c092f1846e0fb0001516d1f.jpg",
  "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2022/03/30/latte-in-black-cup-with-coffee-shop-desserts.jpg.rend.hgtvcom.406.305.suffix/1648675207115.jpeg",
  "https://imgmedia.lbb.in/media/2019/07/5d414b41bf688c5dff6b2b80_1564560193354.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqHNCefG7kcAWhQKCj_l5ZOm1YYcI-F-0KHe_w44Ac0eefWdTtRifqB-npZN4ykU9Oe50&usqp=CAU",
  "https://media.istockphoto.com/id/1179920110/photo/coffee-cup-and-coffee-beans.jpg?s=612x612&w=0&k=20&c=_050CKJv7ZqStJx0TINEsQDIUD4dIyicmFHQWNWXIzs="
];

class Task1Screen1 extends StatefulWidget {
  const Task1Screen1({super.key});

  @override
  State<Task1Screen1> createState() => _Task1Screen1State();
}

class _Task1Screen1State extends State<Task1Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(Icons.tv),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            "./images/six-squares.png",
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const ResponsiveLayout(
          desktopBody: MyDesktopBody(), mobileBody: MyMobileBody()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task1_Screen2(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

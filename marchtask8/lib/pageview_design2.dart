import 'package:flutter/material.dart';
import 'package:marchtask8/model/intro.dart';

class PageViewDesign2 extends StatefulWidget {
  const PageViewDesign2({super.key});

  @override
  State<PageViewDesign2> createState() => _PageViewDesign2State();
}

class _PageViewDesign2State extends State<PageViewDesign2> {
  List<Intro> lstIntro = [
    Intro(
        Icons.home,
        "Welcome",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        Colors.orange),
    Intro(
        Icons.thumb_up,
        "Easy to Use",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        Colors.red),
    Intro(
        Icons.image,
        "Easy parallax",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        Colors.purple),
    Intro(
        Icons.edit,
        "Customizable",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        Colors.blue),
  ];
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: lstIntro.length,
        itemBuilder: (context, index) {
          return Container(
            color: lstIntro[index].clr,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Icon(
                    lstIntro[index].ic,
                    size: 250,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Text(
                    lstIntro[index].heading,
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Text(
                      lstIntro[index].subTitle,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}

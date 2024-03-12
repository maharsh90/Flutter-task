import 'package:flutter/material.dart';

class PageViewDesign2 extends StatefulWidget {
  const PageViewDesign2({super.key});

  @override
  State<PageViewDesign2> createState() => _PageViewDesign2State();
}

class _PageViewDesign2State extends State<PageViewDesign2> {
  List<Color> clr = [Colors.red, Colors.pink, Colors.purple];

  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex, keepPage: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
              itemCount: clr.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: clr[index],
                  child: Text(
                    'Page ${index + 1}',
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                  ),
                );
              },
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: controller),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Logo",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                        children: List.generate(
                      clr.length,
                      (index) => GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: currentIndex == index
                                ? Colors.blue
                                : Colors.blue.shade100,
                            radius: 5,
                          ),
                        ),
                        onTap: () {
                          controller.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

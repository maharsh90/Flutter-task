import 'package:flutter/material.dart';

class Scree1day7 extends StatefulWidget {
  const Scree1day7({super.key});

  @override
  State<Scree1day7> createState() => _Scree1day7State();
}

class _Scree1day7State extends State<Scree1day7> with TickerProviderStateMixin {
  PageController pageController = PageController();
  late final Animatable<Color?> background;

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  void _initialize() {
    background = TweenSequence<Color?>([
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.orange[600],
          end: Colors.red[400],
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.red[700],
          end: Colors.pink[300],
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.purple,
          end: Colors.blue[400],
        ),
      ),
    ]);
    pageController = PageController();
  }

  @override
  void reassemble() {
    pageController.dispose();
    _initialize();
    super.reassemble();
  }

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          final color =
              pageController.hasClients ? pageController.page! / 3 : 0.0;

          return DecoratedBox(
            decoration: BoxDecoration(
              color: background.evaluate(AlwaysStoppedAnimation(color)),
            ),
            child: child,
          );
        },
        child: PageView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: pageController,
          children: const <Widget>[
            Stack(
              children: [
                Center(
                    child: Icon(
                  Icons.home,
                  size: 220,
                  color: Colors.white,
                )),
                Positioned(
                  bottom: 100,
                  left: 110,
                  child: Text(
                    "Welcome",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 50,
                  child: Text(
                    "Simple API easy to Understand",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                    child: Icon(
                  Icons.thumb_up_outlined,
                  size: 220,
                  color: Colors.white,
                )),
                Positioned(
                  bottom: 100,
                  left: 110,
                  child: Text(
                    "Paralex ",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 50,
                  child: Text(
                    "Simple API easy to Understand",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                    child: Icon(
                  Icons.photo,
                  size: 220,
                  color: Color(0xfffdfffe),
                )),
                Positioned(
                  bottom: 100,
                  left: 35,
                  child: Text(
                    "Customizeable",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 50,
                  child: Text(
                    "Simple API easy to Understand",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                    child: Icon(
                  Icons.rate_review_outlined,
                  size: 220,
                  color: Color(0xfffdfffe),
                )),
                Positioned(
                  bottom: 100,
                  left: 35,
                  child: Text(
                    "Simple to Use",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 50,
                  child: Text(
                    "Simple API easy to Understand",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

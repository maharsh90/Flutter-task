import 'package:flutter/material.dart';
import 'package:marchtask8/page_view1.dart';
import 'package:marchtask8/page_view2.dart';
import 'package:marchtask8/page_view3.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(physics: const BouncingScrollPhysics(), children: [
        PageView1(),
        PageView2(),
        PageView3(),
      ]),
    );
  }
}

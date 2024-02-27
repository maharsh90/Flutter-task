import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Task1Screen2 extends StatelessWidget {
  const Task1Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('0'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('1'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('2'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('3'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('4'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('5'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('6'),
                      ),
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text('7'),
                      ),
                    ],
                  ),
                )),
          ]),
    );
  }
}

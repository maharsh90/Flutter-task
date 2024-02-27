import 'package:feb21_task/task2_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Task1Screen1 extends StatelessWidget {
  const Task1Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.green,
                child: Image.network(
                  "https://freepngimg.com/save/28350-microsoft-logo-photos/880x660",
                  color: Colors.white,
                  height: 50,
                  width: 50,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: const Icon(
                  Icons.wifi,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.yellow,
                child: const Icon(
                  Icons.tab,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.black,
                child: const Icon(
                  Icons.map,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.redAccent,
                child: const Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.blue,
                child: const Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.redAccent,
                child: const Icon(
                  Icons.bluetooth,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.pink,
                child: const Icon(
                  Icons.battery_alert,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.purple,
                child: const Icon(
                  Icons.tv,
                  color: Colors.white,
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: const Icon(
                  Icons.radio,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Task2Screen2(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class WallPaperApp extends StatefulWidget {
  const WallPaperApp({super.key});

  @override
  State<WallPaperApp> createState() => _WallPaperAppState();
}

List<String> images = [
  "https://img.freepik.com/free-photo/reflection-lights-mountain-lake-captured-parco-ciani-lugano-switzerland_181624-24209.jpg?w=1380&t=st=1711101691~exp=1711102291~hmac=2d55111d99f308d6bac5306da00026b5ad4e30d7dca55c12f1272ddc0ada8cb1",
  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=1380&t=st=1711101743~exp=1711102343~hmac=1ec39d0a16004f353e1d97a35133213d04d7c6476fdcabe0a10c3134b41e7a1c",
  "https://img.freepik.com/free-photo/lone-tree_181624-46361.jpg?t=st=1711101761~exp=1711102361~hmac=039fd046510d9b087107dc5018d3106227bac4289eff1e941c3887a062da8b06",
  "https://img.freepik.com/free-photo/breathtaking-shot-beautiful-stones-turquoise-water-lake-hills-background_181624-12847.jpg?w=1380&t=st=1711101791~exp=1711102391~hmac=609729acf138812b10eafca873dcdbc27f37b588598216db0fca930cd41f5fea",
  "https://img.freepik.com/free-photo/natures-beauty-reflected-tranquil-mountain-waters-generative-ai_188544-7867.jpg?w=1380&t=st=1711101808~exp=1711102408~hmac=85f2f158bfa68b4b40aa6b70d8bae08370e886d6d262d5c6ddc038c76d43abd1",
  "https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?w=1060&t=st=1711101639~exp=1711102239~hmac=21b922e399b0d3356ba53fd157962feabdbbb3313a61ce8e2c65c73e242a632c",
  "https://img.freepik.com/free-photo/view-old-tree-lake-with-snow-covered-mountains-cloudy-day_181624-28954.jpg?w=1380&t=st=1711101852~exp=1711102452~hmac=4d9f867b6bfcc8c7e0e56c51e6734b966594337384110e22047fd380230a8802",
  "https://img.freepik.com/free-photo/misurina-sunset_181624-34793.jpg?t=st=1711101847~exp=1711102447~hmac=9e6d528166db149044d1fb86893064d3ae92fb2ae69c1afb9f95266b1d147c91",
  "https://img.freepik.com/free-photo/vestrahorn-mountains-stokksnes-iceland_335224-667.jpg?t=st=1711101893~exp=1711102493~hmac=c0e8a9bf29bfc53af689c5a4753d30fc25bf43e3f465aedb5d6a59c77a1ca0bd",
  "https://img.freepik.com/free-photo/lake-mountains_1204-502.jpg?w=1380&t=st=1711101938~exp=1711102538~hmac=84b1439a07f4c09c1787232483730b1a84b391aed0854c306cbea725c688a5f8",
  "https://img.freepik.com/free-photo/aerial-beautiful-shot-seashore-with-hills-background-sunset_181624-24143.jpg?w=1380&t=st=1711101964~exp=1711102564~hmac=e0594c44eb8407bf19c2c6bb2a13ac3b1499abaf2e8bcd86a9f5ca8a51b4d3aa",
];

List<StaggeredTile> basicTile = [
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

List<StaggeredTile> dynamicTile = [
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 3),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 3),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

List<StaggeredTile> sliverTile = [
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

class _WallPaperAppState extends State<WallPaperApp>
    with SingleTickerProviderStateMixin {
  List<Widget> widgets = [
    StaggeredGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        staggeredTiles: basicTile,
        children: List.generate(images.length, (int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              images[index],
              fit: BoxFit.fill,
            ),
          );
        }).toList()),
    StaggeredGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        staggeredTiles: dynamicTile,
        children: List.generate(images.length, (int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              images[index],
              fit: BoxFit.fill,
            ),
          );
        }).toList()),
    StaggeredGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        staggeredTiles: sliverTile,
        children: List.generate(images.length, (int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              images[index],
              fit: BoxFit.fill,
            ),
          );
        }).toList()),
  ];

  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Staggered Gridview",
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Basic",
            ),
            Tab(
              icon: Icon(Icons.text_fields_outlined),
              text: "Dynamic Tiles",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Sliver",
            ),
          ],
        ),
      ),
      body: TabBarView(children: widgets, controller: tabController),
    );
  }
}

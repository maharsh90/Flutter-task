import 'package:feb20_task/task2_gridview_icon.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "https://images.ladbible.com/resize?type=webp&quality=70&width=720&fit=contain&gravity=null&url=https://images.ladbiblegroup.com/v3/assets/bltbc1876152fcd9f07/blt20a046605b415e91/64a547dd7e9c0e8cf9e1eea5/steam.png",
  "https://i.blogs.es/cec8de/7b3417f8-02d8-4311-b349-3c91f4a5908e/1366_2000.webp",
  "https://assets.folhavitoria.com.br/images/207444c0-8f5b-11ed-aa33-617bd4d4c82d--minified.png",
  "https://flowgames.gg/wp-content/uploads/2023/11/image-4-3.jpg",
  "https://cdn.wccftech.com/wp-content/uploads/2019/01/WCCFthedivision2epic.jpg"
];

List<String> game1 = [
  "https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Psi-Ops_-_The_Mindgate_Conspiracy_Coverart.png/220px-Psi-Ops_-_The_Mindgate_Conspiracy_Coverart.png",
  "https://upload.wikimedia.org/wikipedia/en/f/fb/Total_Overdose_Coverart.png",
  "https://upload.wikimedia.org/wikipedia/en/1/1e/The_Incredible_Hulk_video_game_cover_art.png",
  "https://upload.wikimedia.org/wikipedia/en/f/f8/Prince_of_Persia_-_The_Two_Thrones_%28game_box_art%29.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb82R1omRluBkWDPkwNxkMjM68uQw_EfY0Z4gmFhlZLnCiNPRNEtTuktDINn7NfM-FVVo&usqp=CAU",
];

List<String> game2 = [
  "https://www.cityam.com/wp-content/uploads/2023/09/CCS-Candies-Key-Art-4-3-Logo-e1695898049123.jpg?w=742",
  "https://static.wikia.nocookie.net/logopedia/images/a/ad/Rail_Rush_icon.png/revision/latest/scale-to-width-down/250?cb=20140210144730",
  "https://e7.pngegg.com/pngimages/844/834/png-clipart-clash-royale-clash-royale-logo-icons-logos-emojis-tech-companies-thumbnail.png",
  "https://upload.wikimedia.org/wikipedia/en/f/f8/Prince_of_Persia_-_The_Two_Thrones_%28game_box_art%29.jpg",
  "https://m.media-amazon.com/images/I/9174IFkjw4L.png",
];

class FeaturedPageApp extends StatelessWidget {
  const FeaturedPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        title: const Text('Featured App'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.network(
                            images[index],
                            height: 100,
                            width: 200,
                          ),
                          const Positioned(
                              bottom: 2,
                              left: 45,
                              child: Text(
                                'newtwok image',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best New Apps',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: game1.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(game1[index]),
                                fit: BoxFit.cover),
                          ),
                          margin: const EdgeInsets.all(5),
                          height: 100,
                          width: 150,
                        ),
                        const Text(
                          'network image',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'price:\$34\ngames',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          const Divider(),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best New Apps',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: game2.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(game2[index]),
                                  fit: BoxFit.cover),
                            ),
                            margin: const EdgeInsets.all(5),
                            height: 100,
                            width: 150,
                          ),
                          const Text(
                            'network image',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'price:\$34\ngames',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GridviewIconPage(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

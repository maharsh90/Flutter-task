import 'package:flutter/material.dart';
import 'package:task16/task6_folder/fruit_class.dart';

import 'detail_fruit_page.dart';

List<Fruit> fruitList = [
  Fruit("./images/kiwi.png", "kiwi", "kiwi is greate", "3-MAr"),
  Fruit("./images/lemon.png", "lemon", "lemon is greate", "4-MAr"),
  Fruit(
      "./images/strawberry.png", "strawberry", "strawberry is greate", "6-MAr"),
  Fruit("./images/fig.jpeg", "fig", "fig is greate", "7-MAr"),
  Fruit("./images/dragon.jpeg", "dragon", "dragon is greate", "8-MAr"),
  Fruit(
      "./images/watermelon.jpeg", "watermelon", "watermelon is greate", "9-MAr")
];

class ListDesignPage extends StatelessWidget {
  const ListDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Photo shoots'),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context, index) {
          var fruit = fruitList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailFruitPage(fruitImg: fruit.img),
                  ));
            },
            child: Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(20.0),
              child: ListTile(
                leading: Image.asset(fruit.img.toString()),
                title: Text(fruit.name.toString()),
                subtitle: Text(fruit.subtitle.toString()),
                trailing: Text(fruit.dt.toString()),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

List<String> menuItemList = ["pizza", "tea", "burger", "cheesy7"];

class ResturantMenuPage extends StatefulWidget {
  const ResturantMenuPage({super.key});

  @override
  State<ResturantMenuPage> createState() => _ResturantMenuPageState();
}

class _ResturantMenuPageState extends State<ResturantMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: const Text('Resturant Menu'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuItemList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.grey.shade300,
                        child: Image.asset(
                          "./images/${menuItemList[index]}.png",
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "./images/Mexican.png",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
                      "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"
                      " but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s "
                      "with the release of Letraset sheets containing Lorem Ipsum passages,"
                      " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Image.asset(
                              "./images/Farmhouse.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
                      "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"
                      " but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s "
                      "with the release of Letraset sheets containing Lorem Ipsum passages,"
                      " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Task1Screen3 extends StatelessWidget {
  const Task1Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 400,
              width: double.maxFinite,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://t4.ftcdn.net/jpg/02/57/91/21/360_F_257912197_ySuBhefKYPQIZNa3xeGiObLpgYBnH9U5.jpg"))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Kandersteg,Switzerland',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Text("41"),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.blue,
                        ),
                        Text(
                          'ROUTE',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Text(
                          'SHARE',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has "
                  "been the industry's standard dummy text ever since the 1500s, when an unknown printer took a g"
                  "alley of type and scrambled it to make a type specimen book. It has survived not only five centu"
                  "ries, but also the leap into electronic typesetting, remaining essentially unchanged. It was pop"
                  "ularised in the 1960s with the release of Letraset sheets con"
                  "taining Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),
          ],
        ),
      ),
    );
  }
}

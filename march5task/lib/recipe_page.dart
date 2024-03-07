import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:march5task/profile_page.dart';
import 'package:march5task/widget/build_appbar.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: buildAppbar("Recipe App"),
      body: buildView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ));
          },
          child: const Icon(Icons.navigate_next)),
    );
  }
}

Widget buildView() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Container(
        height: 180,
        width: 200,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              const BoxShadow(color: Colors.grey, offset: Offset(1.2, 1.2)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://img.lovepik.com/free-png/20211124/lovepik-natural-woods-png-image_401110806_wh1200.png",
              height: 100,
              width: 100,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Pasta with tomato sauce",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text("classic italian pasta with tomato sauce"),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [Icon(Icons.access_time), Text("30 mins")],
            ),
          ],
        ),
      );
    },
  );
}

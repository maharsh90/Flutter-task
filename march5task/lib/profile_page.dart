import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:march5task/register_page.dart';
import 'package:march5task/widget/build_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: buildAppbar("Profile card"),
      body: buildView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
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
        height: 190,
        width: 200,
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(offset: Offset(1.1, 1.1), color: Colors.grey)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: CachedNetworkImage(
                imageUrl:
                    "https://i.pinimg.com/474x/5e/af/f2/5eaff25038661f0893d8e248a24d3c8c.jpg",
                height: 80,
                width: 100,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const Text(
              "John Doe",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.mail),
                Text("john.doe@example.com"),
                Icon(Icons.phone),
                Text("+1(123) 456-7890"),
              ],
            )
          ],
        ),
      );
    },
  );
}

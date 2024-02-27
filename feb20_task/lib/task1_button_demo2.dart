import 'package:feb20_task/task2_custom_gridview.dart';
import 'package:flutter/material.dart';

class Task1ButtonDemo2 extends StatelessWidget {
  const Task1ButtonDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
                  icon: const Icon(Icons.apple, color: Colors.black),
                  onPressed: () {},
                  label: const Text(
                    'Sign in with Apple',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )),
              icon: const Icon(
                Icons.apple,
                color: Colors.black,
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Apple',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              icon: const Icon(
                Icons.apple,
                color: Colors.white,
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Apple',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              icon: Image.asset(
                "./images/google.jpg",
                height: 20,
                width: 20,
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: Colors.blue,
              ),
              icon: SizedBox(
                height: 40,
                width: 40,
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Image.asset(
                    "./images/google.jpg",
                    height: 25,
                    width: 25,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              icon: const Card(
                  color: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  clipBehavior: Clip.hardEdge,
                  child: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  )),
              onPressed: () {},
              label: const Text(
                'Continue with FaceBook',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              icon: Image.asset(
                "./images/twitter.png",
                height: 30,
                width: 30,
              ),
              onPressed: () {},
              label: const Text(
                'Sign In With Twitter',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              icon: Image.asset(
                "./images/microsoft.png",
                height: 30,
                width: 30,
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Microsoft',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              icon: Image.asset(
                "./images/microsoft.png",
                height: 30,
                width: 30,
              ),
              onPressed: () {},
              label: const Text(
                'Sign in with Microsoft',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CustomGridviewPage(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

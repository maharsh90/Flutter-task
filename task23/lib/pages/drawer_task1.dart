import 'package:flutter/material.dart';
import 'package:task23/pages/categories_page.dart';
import 'package:task23/pages/settings_page.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class DrawerTask1 extends StatefulWidget {
  const DrawerTask1({super.key});

  @override
  State<DrawerTask1> createState() => _DrawerTask1State();
}

class _DrawerTask1State extends State<DrawerTask1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: buildDrawer(context),
      body: buildBody(),
    );
  }
}

PreferredSizeWidget buildAppBar() {
  return AppBar(
    title: const Text('Home Page'),
  );
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text(
                'KK',
                style: TextStyle(color: Colors.white),
              ),
            ),
            accountName: const Text("Kalpesh Khandla"),
            accountEmail: const Text('Kalpesh.Khandla@bosc.in')),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: const Icon(Icons.category),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoriesPage(),
                ));
          },
          title: const Text('Categories'),
        ),
        ListTile(
          leading: const Icon(Icons.add_box),
          title: const Text('Add Items'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ));
          },
        ),
        const ListTile(
          leading: Icon(Icons.account_box_outlined),
          title: Text('About Us'),
        ),
        const ListTile(
          leading: Icon(Icons.share),
          title: Text('Share with friends'),
        ),
        const ListTile(
          leading: Icon(Icons.rate_review),
          title: Text('Rate and Review'),
        ),
        const ListTile(
          leading: Icon(Icons.privacy_tip_sharp),
          title: Text('Privacy Policy'),
        ),
      ],
    ),
  );
}

Widget buildBody() {
  return Column(
    children: [
      const Row(
        children: [
          Text('Home Body'),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Builder(
              builder: (context) => Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Open drawer',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

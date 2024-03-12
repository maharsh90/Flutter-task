import 'package:flutter/material.dart';
import 'package:march11task/model/sea.dart';
import 'package:march11task/sea_detail_page.dart';

class NavigationDesign2 extends StatefulWidget {
  const NavigationDesign2({super.key});

  @override
  State<NavigationDesign2> createState() => _NavigationDesign2State();
}

class _NavigationDesign2State extends State<NavigationDesign2> {
  List<Sea> lstOfSea = [
    Sea(
        const NetworkImage(
            "https://www.pngall.com/wp-content/uploads/5/Ocean-Sea-PNG-Image.png"),
        "sea 1",
        "Ocean view for Sea 1"),
    Sea(
        const NetworkImage(
            "https://t4.ftcdn.net/jpg/05/86/98/23/360_F_586982338_Iin6z3Nmof0hO29eevAk5Qe1D6GLdG99.jpg"),
        "sea 2",
        "Ocean view for Sea 2"),
    Sea(
        const NetworkImage(
            "https://i.pinimg.com/736x/f2/a6/e0/f2a6e0aba6093a361ddb6512bb708a77.jpg"),
        "sea 3",
        "Ocean view for Sea 3")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Un-Named Routes'),
      ),
      body: ListView.builder(
        itemCount: lstOfSea.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SeaDetailPage(
                    lstSea: lstOfSea,
                    index: index,
                  ),
                ),
              );
            },
            child: ListTile(
              leading: CircleAvatar(backgroundImage: lstOfSea[index].image),
              title: Text(lstOfSea[index].title),
              subtitle: Text(lstOfSea[index].subTitle),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'model/sea.dart';

class SeaDetailPage extends StatefulWidget {
  List<Sea> lstSea;
  int index;
  SeaDetailPage({super.key, required this.lstSea, required this.index});

  @override
  State<SeaDetailPage> createState() => _SeaDetailPageState();
}

class _SeaDetailPageState extends State<SeaDetailPage> {
  @override
  Widget build(BuildContext context) {
    SnackBar snackBar = SnackBar(
        content: Text(
            "${widget.lstSea[widget.index].title} is marked as favourite"));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.lstSea[widget.index].title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: widget.lstSea[widget.index].image)),
            ),
          ),
          Text(
            widget.lstSea[widget.index].subTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.favorite_border),
      ),
    );
  }
}

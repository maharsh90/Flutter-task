import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 500,
                    width: 300,
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          height: 100,
                          width: MediaQuery.of(context).size.width - 315,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          height: 395,
                          width: MediaQuery.of(context).size.width - 315,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple,
            ),
          ),
        ],
      ),
    ));
  }
}

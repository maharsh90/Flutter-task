import 'package:flutter/material.dart';

class ColumnRowDemo1 extends StatelessWidget {
  const ColumnRowDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: 10, bottom: 10, right: 10),
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 145,
                              width: MediaQuery.sizeOf(context).width - 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 145,
                              width: MediaQuery.sizeOf(context).width - 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 190,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

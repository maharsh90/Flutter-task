import 'package:flutter/material.dart';

class ColummnDesignDemoPage extends StatelessWidget {
  const ColummnDesignDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                height: 50,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.red,
                        ),
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.purple,
                ),
                height: 500,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

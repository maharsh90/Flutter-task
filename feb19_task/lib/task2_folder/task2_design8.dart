import 'package:flutter/material.dart';

class TopOfEachPage8 extends StatelessWidget {
  const TopOfEachPage8({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('./images/usa1.jpeg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  child: Column(
                    children: [
                      Text(
                        'New York',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

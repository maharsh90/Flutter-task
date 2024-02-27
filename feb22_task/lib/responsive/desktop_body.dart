import 'package:flutter/material.dart';

List<String> images = [
  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/1280px-A_small_cup_of_coffee.JPG",
  "https://www.comunicaffe.com/wp-content/uploads/2014/12/Coffee-White-Cup.jpg",
  "https://www.gannett-cdn.com/presto/2022/07/08/USAT/f92b64f9-fca7-43e4-a0b0-9f0b936640db-GettyImages-1333814244.jpg",
  "https://cdn.mos.cms.futurecdn.net/ZZKgZkZZNFFABG2B4J66HF.jpg",
  "https://www.verywellfit.com/thmb/AWAl9zhk4txKmKNXAJhGOOzuwsk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-941897350-5c092f1846e0fb0001516d1f.jpg",
  "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2022/03/30/latte-in-black-cup-with-coffee-shop-desserts.jpg.rend.hgtvcom.406.305.suffix/1648675207115.jpeg",
  "https://imgmedia.lbb.in/media/2019/07/5d414b41bf688c5dff6b2b80_1564560193354.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqHNCefG7kcAWhQKCj_l5ZOm1YYcI-F-0KHe_w44Ac0eefWdTtRifqB-npZN4ykU9Oe50&usqp=CAU",
  "https://media.istockphoto.com/id/1179920110/photo/coffee-cup-and-coffee-beans.jpg?s=612x612&w=0&k=20&c=_050CKJv7ZqStJx0TINEsQDIUD4dIyicmFHQWNWXIzs="
];

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Coffee Feed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 300,
              child: Row(
                children: [
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.rawpixel.com/image_1100/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTAxL3Jhd3BpeGVsX29mZmljZV8yMl9hX3Bob3RvX29mX2FfY29mZmVlX3Nob3BfaW5fcmFpbnlfZGF5X3dpdGhfdF8xMjBjYThkNS01ODkyLTRjNDUtODk0Mi1jOGI5MDNkN2Y1YWJfMS5qcGc.jpg",
                                )))),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Wrap(
                        children: [
                          for (int i = 0; i < images.length; i++) ...[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  images[i],
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: Row(
                children: [
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.rawpixel.com/image_1100/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA5L3Jhd3BpeGVsb2ZmaWNlOF9waG90b19vZl9jb3p5X3BlZGVzdHJpYW5fc3RyZWV0X21pbmltYWxfYzhkNDdjNzEtNGU3Ni00NzFkLTkzMTctNDg1MmQ2MGJkNTVlXzEuanBn.jpg",
                                )))),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Wrap(
                        children: [
                          for (int i = 0; i < images.length; i++) ...[
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  images[i],
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: Row(
                children: [
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.rawpixel.com/image_1100/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTEyL3Jhd3BpeGVsX29mZmljZV80N19waG90b19vZl9jb3p5X3BlZGVzdHJpYW5fc3RyZWV0X2luX3RoZV9zdW1tZV9jMzk4NmQ5NC00YmIxLTQxNjEtOTFlZS1jOGU3ZjU4MjZhZWNfMS5qcGc.jpg",
                                )))),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Wrap(
                        children: [
                          for (int i = 0; i < images.length; i++) ...[
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  images[i],
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

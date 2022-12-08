import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  var list = [
    'assets/images/AngryCat.webp',
    'assets/images/cat2.jpg',
    'assets/images/cat3.jpg'
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("CATs"),
        ),
        body: CarouselSlider(
          options: CarouselOptions(height: double.infinity),
          items: list.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Center(
                  child: Container(
                    child: Image.asset(i),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    ),
  );
}

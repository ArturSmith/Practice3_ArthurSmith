import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  var list = [
    // 'assets/images/AngryCat.webp',
    // 'assets/images/cat2.jpg',
    // 'assets/images/cat3.jpg',
    'assets/images/snake-venom-vase.svg'
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Snake venom vase"),
        ),
        body: CarouselSlider(
          options: CarouselOptions(height: double.infinity),
          items: list.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Center(
                  child: SvgPicture.asset(i),
                );
              },
            );
          }).toList(),
        ),
      ),
    ),
  );
}

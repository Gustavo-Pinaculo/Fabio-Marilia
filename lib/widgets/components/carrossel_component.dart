import 'package:carousel_slider/carousel_slider.dart';
import 'package:fabio_marilia/utils/utils.dart';
import 'package:flutter/material.dart';

class CarrosselComponent extends StatelessWidget {
  final List images;
  const CarrosselComponent({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height(context, 0.5),
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enableInfiniteScroll: true,
      ),
      items: images.map((url) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(url, fit: BoxFit.cover, width: double.infinity),
        );
      }).toList(),
    );
  }
}

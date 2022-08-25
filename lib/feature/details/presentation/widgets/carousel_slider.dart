import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> images;

  const Carousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map(
        (url) => SizedBox(
          height: double.infinity,
          child: ClipRRect(
            borderRadius:  BorderRadius.circular(15),
            child: Image.network(
              url, 
              fit: BoxFit.cover
            ),
          ),
        ),
      ).toList(), 
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 3,
      ),
    );
  }
}
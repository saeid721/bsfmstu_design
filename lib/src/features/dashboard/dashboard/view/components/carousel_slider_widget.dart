import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';

CarouselSliderController buttonCarouselController = CarouselSliderController();

final List<String> imgList = [
  'assets/dummy_img/sfmuj_cover.jpeg',
  'assets/dummy_img/02.jpg',
  'assets/dummy_img/01.jpg',
  'assets/dummy_img/03.jpg',
  'assets/dummy_img/04.jpg',
  'assets/dummy_img/05.jpg',
];

Widget buildCarouselSlider() {
  return CarouselSlider(
    items: imgList
        .map((item) => GlobalContainer(
              color: ColorRes.white,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Image.asset(
                  item,
                  fit: BoxFit.fill,
                  width: 1000.0,
                ),
              ),
            ))
        .toList(),
    carouselController: buttonCarouselController,
    options: CarouselOptions(
      autoPlay: true,
      enlargeCenterPage: true,
      viewportFraction: 1.0,
      aspectRatio: 2.0,
      initialPage: 0,
    ),
  );
}

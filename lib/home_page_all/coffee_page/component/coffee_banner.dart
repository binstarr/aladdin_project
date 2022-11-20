import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoffeeBanner extends StatefulWidget {
  const CoffeeBanner({Key? key}) : super(key: key);

  @override
  State<CoffeeBanner> createState() => _CoffeeBannerState();
}

class _CoffeeBannerState extends State<CoffeeBanner> {
  final List<String> bannerList = [
    'assets/coffee_page/banner1.png',
    'assets/coffee_page/banner2.png',
    'assets/coffee_page/banner3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1.2,
      ),
      items: bannerList
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(e, fit: BoxFit.cover)),
            ),
          )
          .toList(),
    );
  }
}

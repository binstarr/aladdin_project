import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {

  final List<String> bannerList = [
    'assets/banner01.jpg',
    'assets/banner02.jpg',
    'assets/banner03.jpg',
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 150,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
        ),
        items: bannerList
            .map((e) => Container(
          child: Image.asset
            (e,
            fit: BoxFit.fitWidth,
          ),
        ),
        )
            .toList(),
       ),
    );
  }
}



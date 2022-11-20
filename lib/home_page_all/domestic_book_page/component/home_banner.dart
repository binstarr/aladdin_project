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
    'assets/domestic_book/1.png',
    'assets/domestic_book/2.png',
    'assets/domestic_book/3.png',
    'assets/domestic_book/4.png',
    'assets/domestic_book/5.png',
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 210,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
        ),
        items: bannerList
            .map((e) => Padding(
              padding: const EdgeInsets.only(top: 12.0,bottom: 12, ),
              child: Container(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset
                (e,
                fit: BoxFit.cover,
              ),
          ),
        ),
            ),
        )
            .toList(),
       ),
    );
  }
}



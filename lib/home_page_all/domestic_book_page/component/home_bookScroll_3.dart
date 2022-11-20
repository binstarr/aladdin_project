import 'package:flutter/material.dart';

class HomeBookScroll3 extends StatelessWidget {
  const HomeBookScroll3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book09"),
            _buildBookImage("book13"),
            _buildBookImage("book12"),
            _buildBookImage("book11"),
            _buildBookImage("book10"),
          ],
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage("assets/${bookImgUrl}.jpg"),
        height: 220,
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}

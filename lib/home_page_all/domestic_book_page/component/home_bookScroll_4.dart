import 'package:flutter/material.dart';

class HomeBookScroll4 extends StatelessWidget {
  const HomeBookScroll4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book04"),
            _buildBookImage("book05"),
            _buildBookImage("book06"),
            _buildBookImage("book07"),
            _buildBookImage("book08"),
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
        height: 200,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

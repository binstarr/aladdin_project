import 'package:flutter/material.dart';

class HomeEditorChoice extends StatelessWidget {
  const HomeEditorChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book01"),
            _buildBookImage("book02"),
            _buildBookImage("book03"),
            _buildBookImage("book05"),
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
        height: 350,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

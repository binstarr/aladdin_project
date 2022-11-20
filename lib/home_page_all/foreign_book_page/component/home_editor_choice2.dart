import 'package:flutter/material.dart';

class HomeEditorChoice2 extends StatelessWidget {
  const HomeEditorChoice2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book8"),
            _buildBookImage("book9"),
            _buildBookImage("book10"),
            _buildBookImage("book11"),
            _buildBookImage("book12"),
          ],
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage("assets/foreign_book/${bookImgUrl}.jpg"),
        height: 350,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

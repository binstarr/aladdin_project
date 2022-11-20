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
            _buildBookImage("book1"),
            _buildBookImage("book2"),
            _buildBookImage("book3"),
            _buildBookImage("book4"),
            _buildBookImage("book5"),
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
        height: 400,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

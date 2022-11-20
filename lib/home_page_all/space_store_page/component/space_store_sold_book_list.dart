import 'package:flutter/material.dart';

class SpaceStoreSoldBookList extends StatelessWidget {
  const SpaceStoreSoldBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book11", "[중고] Don't Exist"),
            _buildBookImage("book12", "[중고] 오늘 별자리 여행"),
            _buildBookImage("book05","[중고] 지중해 세계사"),
            _buildBookImage("book06", "[중고] 재무제표"),
            _buildBookImage("book08", "[중고] 아버지의 해변일지"),
            _buildBookImage("book09", "[중고] 문화유산답사기"),
          ],
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl, String title) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage("assets/${bookImgUrl}.jpg"),
            height: 200,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
        ),
        Text(title, style: TextStyle(color: Colors.black),),
      ],
    );
  }
}

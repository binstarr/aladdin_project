import 'package:flutter/material.dart';

class UserOnlineSold extends StatelessWidget {
  const UserOnlineSold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book11", "[중고] 퇴사합니다. 독립하려고요. "),
            _buildBookImage("book12", "[중고] 2022 제5회 한국과학문학상 수상작품집"),
            _buildBookImage("book13", "[중고] 너를 너무너무너무너무 좋아하는 100명의 그녀 4"),
            _buildBookImage("book14", "[중고] 예수님이 보내는 편지 80"),
            _buildBookImage("book15", "[중고] 문학사상 2022.6"),

          ],
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 200,
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/user_online/${bookImgUrl}.jpg"),
              height: 300,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            Text(title, style: TextStyle(
              color: Colors.black,
            ),
            ),
          ],
        ),
      ),
    );
  }
}

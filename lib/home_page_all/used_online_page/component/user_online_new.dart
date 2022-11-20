import 'package:flutter/material.dart';

class UserOnlineNew extends StatelessWidget {
  const UserOnlineNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildBookImage("book3", "[중고] 퇴사합니다. 독립하려고요. ", "10,900원", "[45%]"),
            _buildBookImage("book1", "[중고] 2022 제5회 한국과학문학상 수상작품집", "4,200원", "[30%]"),
            _buildBookImage("book2", "[중고] 너를 너무너무너무너무 좋아하는 100명의 그녀 4", "6,200원", "[20%]"),
            _buildBookImage("book4", "[중고] 예수님이 보내는 편지 80", "3,700원", "[37%]"),
            _buildBookImage("book5", "[중고] 문학사상 2022.6", "6,900원", "[42%]"),

          ],
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl, String title, String price, String discountRate) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(price,style: TextStyle(color: Colors.black),),
                SizedBox(width: 10,),
                Text(discountRate,style: TextStyle(color: Colors.pink),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserOnlineNew2 extends StatelessWidget {
  const UserOnlineNew2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildBookImage("book6", "[중고] 세이브 여관 2 ", "6,300원", "[30%]"),
              _buildBookImage("book7", "[중고] 7급 빨리따기", "3,100", "[20%]"),
              _buildBookImage("book8", "[중고] 전우치전", "8,800원", "[45%]"),
              _buildBookImage("book9", "[중고] 붉은 산", "5,700원", "[37%]"),
              _buildBookImage("book10", "[중고] 약삭빠르게 온천", "7,600원", "[42%]"),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookImage(String bookImgUrl, String title, String price, String discountRate) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/user_online/${bookImgUrl}.jpg"),
              height: 200,
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

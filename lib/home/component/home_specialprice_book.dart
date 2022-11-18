import 'package:flutter/material.dart';

class HomeSpecialPriceBook extends StatelessWidget {
  const HomeSpecialPriceBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildSpecialPriceBook("book14", "멜로디 봉봉:크리스마스 캐럴","30% 할인"),
            SizedBox(width: 10,),
            _buildSpecialPriceBook("book12", "멜로디 봉봉:크리스마스 캐럴","73% 할인"),
            SizedBox(width: 10,),
            _buildSpecialPriceBook("book11", "멜로디 봉봉:크리스마스 캐럴","40% 할인"),
            SizedBox(width: 10,),
            _buildSpecialPriceBook("book13", "멜로디 봉봉:크리스마스 캐럴","40% 할인"),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialPriceBook(String bookImgUrl, String bookTitle, String discount){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Image(image: AssetImage("assets/${bookImgUrl}.jpg"),
                width: 150, fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 10,),
            Text(bookTitle, style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(height: 10,),
            Text(discount, style: TextStyle(
              fontSize: 18, color: Colors.pink,
            ),)
          ],
        ),
      ),
    );
  }
}

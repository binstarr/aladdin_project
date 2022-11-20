import 'package:flutter/material.dart';

class HomeMonthBooks extends StatelessWidget {
  const HomeMonthBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              _buildMonthBooks("book10", "행복한 느낌"),
            SizedBox(width: 10,),
            _buildMonthBooks("book07", "경청"),
            SizedBox(width: 10,),
            _buildMonthBooks("book08", "아버지의 해방일지"),
            SizedBox(width: 10,),
            _buildMonthBooks("book09", "문화일기"),
            SizedBox(width: 10,),
            _buildMonthBooks("book06", "재무제표"),
            SizedBox(width: 10,),

          ],
        ),
      ),
    );
  }

  Widget _buildMonthBooks(String bookImgUrl, String bookTitle){
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
          SizedBox(
            width: 150,
            child: Text(bookTitle, style: TextStyle(
              fontSize: 18,
            ),),
          )
        ],
      ),
    );
  }
}

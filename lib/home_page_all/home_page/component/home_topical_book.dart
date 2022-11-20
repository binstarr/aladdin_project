import 'package:flutter/material.dart';

class HomeTopicalBook extends StatelessWidget {
  const HomeTopicalBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _buildTopicalBookList("book15", "신실하고 고결한 밤",
              "21세기 노벨 문학상 첫 여성 시인, 루이즈 글릭의 대표 시집 드디어 출간",
              "루이즈 글릭 아크릴 북마크"),
        )
      ],

    );
  }

  Widget _buildTopicalBookList(String bookImgUrl, String bookTitle,
      String bookText, String bookGift){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Color.fromRGBO(222, 222, 222, 0.4),
        height: 300,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(image: AssetImage("assets/${bookImgUrl}.jpg"),
                fit: BoxFit.fitHeight),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(bookTitle, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,),
                      textAlign: TextAlign.start,),
                      SizedBox(height: 15,),
                      Text(bookText, style: TextStyle(
                        fontSize: 18,)
                        ,),
                      SizedBox(height: 15,),
                      Text(bookGift, style: TextStyle(
                        fontSize: 18,
                        color: Colors.redAccent,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

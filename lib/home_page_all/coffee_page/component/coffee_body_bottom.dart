import 'package:flutter/material.dart';

class CoffeeBodyBottom extends StatelessWidget {
  const CoffeeBodyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCoffeeItem("1", "콜롬비아 엑셀로 디카페인 #4", "오렌지,체리,캐러멜"),
        _buildCoffeeItem("2", "드립백 콜롬비아 엑셀소 디카페인 #4", "오렌지,체리,캐러멜"),
        _buildCoffeeItem("3", "드립백 브라진 산타 루시아 #5", "마카다미아, 다크 초콜릿, 귀리우유"),
        _buildCoffeeItem("4", "에티오피아 예가체프 아리차 #1", "자두, 자몽, 자스민"),
        _buildCoffeeItem("5", "에티오피아 예가체프 아리차 #2", "오렌지,군고구마,밀크캐러멜"),
        _buildCoffeeItem("6", "콜드브루 파우치 알라딘 블랙 슈가 #4", "오렌지,체리,캐러멜"),
        _buildCoffeeItem("7", "콜드브루 후르츠 바스켓 블렌드 #2", "서양자두, 오렌지"),
        _buildCoffeeItem("8", "브라진 산타 루시아 #5", "마카다미아, 귀리우유"),
        _buildCoffeeItem("9", "콜롬비아 엑셀로 디카페인 #4", "오렌지,체리,캐러멜"),
        _buildCoffeeItem("10", "브라진 산타 루시아 #5", "마카다미아, 다크 초콜릿, 귀리우유"),
        _buildCoffeeItem("11", "에티오피아 예가체프 아리차 #1", "자두, 자몽, 자스민"),
        _buildCoffeeItem("12","에티오피아 예가체프 아리차 #2", "오렌지,군고구마,밀크캐러멜"),
        _buildCoffeeItem("13", "드립백 콜롬비아 엑셀소 디카페인 #4", "오렌지,체리,캐러멜"),
        _buildCoffeeItem("14", "콜롬비아 엑셀로 디카페인 #4", "오렌지,체리,캐러멜"),
        Container(
            width: double.infinity,
            color: Color.fromRGBO(237, 233, 230, 1.0),
            child: SizedBox(height: 80)),
      ],
    );
  }

  Widget _buildCoffeeItem(String imgUrl, String title, String element){
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(237, 233, 230, 1.0),
      child: Column(
        children: [
          Image.asset("assets/coffee_page/$imgUrl.png"),
          Text(title, style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          Text(element, style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
          ),),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

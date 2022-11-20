import 'package:aladdin_project/home_page_all/domestic_book_page/component/home_bookScroll_3.dart';
import 'package:aladdin_project/home_page_all/domestic_book_page/component/home_bookScroll_4.dart';
import 'package:flutter/material.dart';

import '../component/home_banner.dart';
import '../component/home_bookScroll_1.dart';
import '../component/home_bookScroll_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeBanner(),
          _buildHomeTitle("국내서 신간"),
          HomeBookScroll1(),
          SizedBox(height: 30,),
          _buildHomeTitle("드라마를 읽는 주말"),
          HomeBookScroll2(),
          SizedBox(height: 30,),
          _buildHomeTitle("지금, 화제의 책"),
          HomeBookScroll3(),
          SizedBox(height: 30,),
          _buildHomeTitle("새로 나온 책"),
          HomeBookScroll4(),
          SizedBox(height: 30,),
          _buildHomeTitle("국내서 신간"),
          HomeBookScroll1(),
          SizedBox(height: 30,),
          _buildHomeTitle("드라마를 읽는 주말"),
          HomeBookScroll2(),
          SizedBox(height: 30,),
          _buildHomeTitle("지금, 화제의 책"),
          HomeBookScroll3(),
          SizedBox(height: 30,),
          _buildHomeTitle("새로 나온 책"),
          HomeBookScroll4(),
          SizedBox(height: 100,),
        ],
    );
  }

  Widget _buildHomeTitle(String title){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: Text(
          title, textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _bottomLine(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey,
      ),
    );
  }
}

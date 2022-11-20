import 'package:flutter/material.dart';

import '../component/home_banner.dart';
import '../component/home_editor_choice.dart';
import '../component/home_famous_line.dart';
import '../component/home_month_books.dart';
import '../component/home_specialprice_book.dart';
import '../component/home_topical_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeBanner(),
          _buildHomeTitle("편집장의 선택"),
          HomeEditorChoice(),
          SizedBox(height: 20,),
          _bottomLine(),
          _buildHomeTitle("지금, 화제의 책 !"),
          HomeTopicalBook(),
          SizedBox(height: 20,),
          _bottomLine(),
          _buildHomeTitle("이달의 주목 도서"),
          HomeMonthBooks(),
          SizedBox(height: 20,),
          _bottomLine(),
          _buildHomeTitle("이 주의 특가"),
          HomeSpecialPriceBook(),
          SizedBox(height: 20,),
          _bottomLine(),
          _buildHomeTitle("이 책의 한문장"),
          HomeFamousLine(),
          SizedBox(height: 100,),
        ],
    );
  }

  Widget _buildHomeTitle(String title){
    return Padding(
      padding: const EdgeInsets.all(16.0),
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

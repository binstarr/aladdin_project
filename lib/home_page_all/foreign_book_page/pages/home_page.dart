import 'package:aladdin_project/home_page_all/foreign_book_page/component/home_editor_choice.dart';
import 'package:aladdin_project/home_page_all/foreign_book_page/component/home_editor_choice2.dart';
import 'package:aladdin_project/home_page_all/foreign_book_page/component/home_foreign_popular_book.dart';
import 'package:flutter/material.dart';
import '../component/home_banner.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeBanner(),
        _buildCoupon(),
        SizedBox(height: 10,),
        _buildHomeTitle("추천 인기 외국 도서"),
        HomeForeignPopularBook(),
        SizedBox(height: 20,),
        _buildHomeTitle("외국 베스트셀러"),
        HomeEditorChoice2(),
        SizedBox(height: 20,),
        _buildHomeTitle("영미 도서 특가"),
        HomeEditorChoice(),
        SizedBox(height: 100,),

      ],
    );
  }

  Widget _buildCoupon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Image.asset("assets/foreign_book/event.png"),
    );
  }

  Widget _buildHomeTitle(String title) {
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
}

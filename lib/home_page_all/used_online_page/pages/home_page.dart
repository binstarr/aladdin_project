import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_banner.dart';
import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_button.dart';
import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_new.dart';
import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_new2.dart';
import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_sold2.dart';
import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_universe.dart';
import 'package:flutter/material.dart';

import '../component/user_online_sold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UserOnlineBanner(),
        UserOnlineButton(),
        _buildCheck(),
        _buildHomeTitle("새로 등록된 중고"),
        UserOnlineNew(),
        UserOnlineUniverse(),
        _buildHomeTitle("품절 / 절판 도서"),
        UserOnlineSold(),
        UserOnlineSold2(),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Widget _buildCheck() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        width: double.infinity,
        height: 60,
        color: Color.fromRGBO(40, 128, 164, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "중고상품 매입가를 조회해보세요.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.search, color: Colors.white, size: 30,),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

import 'package:aladdin_project/home_page_all/space_store_page/component/space_store_body.dart';
import 'package:flutter/material.dart';

import '../component/space_store_banner.dart';
import '../component/space_store_sold_book_list.dart';

class SpaceStroreHomePage extends StatelessWidget {
  const SpaceStroreHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SpaceStoreBanner(),
          _buildHomeTitle("고객이 방금 팔고 간 책"),
          SpaceStoreSoldBookList(),
          SizedBox(height: 50),
          _bottomLine(),
          SizedBox(height: 30),
          _buildHomeTitle("이 광활한 우주점 매장안내"),
          SpaceStoreBody(),
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
    return Container(
      width: double.infinity,
      height: 0.3,
      color: Colors.grey,
    );
  }
}

import 'package:aladdin_project/recommend_page/components/recommend_header.dart';
import 'package:flutter/material.dart';

import 'components/recommend_footer_list.dart';
import 'components/recommend_item.dart';
import 'components/recoomend_footer.dart';

class RecommandPage extends StatelessWidget {
  const RecommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 232, 1.0),
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          RecommendHeader(),
          RecommendItem(),
          RecommendFooterList(),
          Footer(),
        ],
      ),
    );
  }

  AppBar _buildAppBar (BuildContext context){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30, child: Image.asset("assets/logo.png")),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onTap: (){
                      Navigator.pushNamed(context, "/search");
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(232, 232, 232, 1.0),
                      contentPadding: EdgeInsets.only(left: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 200,
                    top: 5
                ),
                child: IconButton(
                  onPressed: (){},
                    icon: Icon(Icons.search, color: Colors.grey)),
              )
            ]),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
              onPressed: () {
                // 아이콘 버튼 실행
                print('Search button is clicked');
              },
              iconSize: 25,
            ),
          ],
        ),
      ],
    );
  }
}
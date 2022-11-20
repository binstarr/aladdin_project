
import 'package:aladdin_project/login_succece/logined_alarm_page/post_components/header.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
  AppBar _buildAppBar (){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.grey),
        onPressed: () {
          // 아이콘 버튼 실행
          print('Search button is clicked');
        },
        iconSize: 25,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30, child: Image.asset("assets/logo.png")),
            SizedBox(
              width: 5,
            ),
            Stack(children: [
              Container(
                width: 230,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 195.0,
                    top: 8
                ),
                child: Icon(Icons.search, color: Colors.grey),
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

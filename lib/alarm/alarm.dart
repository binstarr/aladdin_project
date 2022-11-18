
import 'package:aladdin_project/alarm/components/company_info.dart';
import 'package:aladdin_project/alarm/components/item_list.dart';
import 'package:aladdin_project/alarm/components/service_bar.dart';
import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      hintText: "정재승 추천 12가지 인생 키워드",
                      contentPadding: EdgeInsets.only(left: 10),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
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
      ),
      body: ListView(
        children: [
          ItemList(),
          ServiceBar(),
          CompanyInfo(),

        ],
      ),
    );
  }
}

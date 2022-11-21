
import 'package:aladdin_project/login_succece/logined_alarm_page/components/item_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_page_all/recommend_page/components/recoomend_footer.dart';

class LoginedAlarmPage extends StatelessWidget {
  const LoginedAlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          ItemList(),
          Footer(),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
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
                    onTap: () {
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
                padding: const EdgeInsets.only(left: 200, top: 5),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey)),
              )
            ]),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.grey),
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("현재 지원하지 않는 기능입니다."),
                        actions: [
                          CupertinoDialogAction(
                            child: Text("확인"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              iconSize: 25,
            ),
          ],
        ),
      ],
    );
  }
}

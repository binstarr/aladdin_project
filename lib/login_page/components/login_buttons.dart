import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../login_succece/logined_page/logined.dart';
import '../model/RequestPost.dart';
import '../pages/login_page.dart';
import '../url.dart';

class Buttons extends StatelessWidget {
  Buttons({Key? key, required this.text, required this.mColor})
      : super(key: key);

  set context(BuildContext context) {}
  final String text;
  final Color mColor;
  int? a;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Column(
      children: [
        SizedBox(
          width: BUTTON_FIELD_WIDTH,
          height: BUTTON_FIELD_HEIGHT,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(mColor),
            ),
            onPressed: () async {
              print('idController : ${LoginPage.idController.text}');
              print('pwController : ${LoginPage.pwController.text}');
              await login();
              if (a == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginedPage(),
                    ));
              } else {
                print("로그인 실패");
              }
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }

  login() async {
    var uri = Uri.parse(BASED_URL + "/login");
    var requestPostObj = RequestPost(
      username: LoginPage.idController.text,
      password: LoginPage.pwController.text,
    );
    var headerMsg = {'Content-type': 'application/json; charset=UTF-8'};
    var idPw = convert.jsonEncode(requestPostObj.login());
    await http
        .post(
      uri,
      headers: headerMsg,
      body: idPw,
    )
        .then((value) {
      var body = convert.jsonDecode(value.body);
      print('value.headers : ${value.headers}');
      var jsonUsername = body["data"]["username"];
      var jsonPassword = body["data"]["password"];
      // print('value.headers[code] : ${value.headers['code']}');
      if ((jsonUsername == LoginPage.idController.text)) {
        print('성공');
        a = 0;
      } else {
        print('실패');
        a = 1;
      }
    });
  }
}

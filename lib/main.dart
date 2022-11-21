import 'package:aladdin_project/search_page/search_main_page.dart';
import 'package:aladdin_project/shoppingcart_page/shoppincart_page.dart';
import 'package:flutter/material.dart';
import 'alarm_page/alarm_page.dart';
import 'alarm_page/post_page.dart';
import 'home_page_all/all_main_page.dart';
import 'home_page_all/home_page/pages/main_page.dart';
import 'loading_page.dart';
import 'login_page/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
      routes: {
        "/main": (context) => AllMainPage(),
        "/home": (context) => HomePageMain(),
        "/login": (context) => LoginPage(),
        "/alarm": (context) => AlarmPage(),
        "/post": (context) => PostPage(),
        "/search": (context) => SearchPage(),
        "/shoppingcart" : (context) => ShoppingCartPage(),
      },
    );
  }
}

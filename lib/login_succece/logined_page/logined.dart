
import 'package:aladdin_project/login_succece/logined_page/pages/my_profile.dart';
import 'package:aladdin_project/search_page/search_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_page_all/all_main_page.dart';
import '../logined_alarm_page/alarm_page.dart';
import '../logined_shoppingcart_page/shoppingcart_page.dart';


class LoginedPage extends StatefulWidget {
  const LoginedPage({Key? key}) : super(key: key);

  @override
  State<LoginedPage> createState() => _LoginedPageState();
}

class _LoginedPageState extends State<LoginedPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: [
          AllMainPage(),
          SearchPage(),
          LoginedAlarmPage(),
          MyProfile(),
          LoginedShoppingCartPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //최대 5개까지 만들 수 있다.
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Service"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Shopping"),

        ],
      ),
    );
  }


}

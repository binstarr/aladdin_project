import 'package:aladdin_project/search_page/search_main_page.dart';
import 'package:aladdin_project/home_page_all/all_main_page.dart';
import 'package:aladdin_project/shoppingcart_page/shoppincart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'alarm_page/alarm_page.dart';
import 'login_page/pages/login_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          AllMainPage(),
          SearchPage(),
          AlarmPage(),
          LoginPage(),
          ShoppingCartPage(),
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

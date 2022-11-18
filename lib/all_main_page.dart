import 'package:aladdin_project/home/pages/main_page.dart';
import 'package:aladdin_project/login/pages/login_page.dart';
import 'package:aladdin_project/recommend_wizard_selected_page/main_page.dart';
import 'package:flutter/material.dart';

class AllMainPage extends StatefulWidget {
  const AllMainPage({Key? key}) : super(key: key);

  @override
  State<AllMainPage> createState() => _AllMainPageState();
}

class _AllMainPageState extends State<AllMainPage> {
  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          MainPage(),
          RecommandPage(),
          LoginPage(),
          //여기 갯수와 버튼의 갯수가 같아야한다.
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
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.people_rounded), label: "Login"),
        ],
      ),
    );
  }
}

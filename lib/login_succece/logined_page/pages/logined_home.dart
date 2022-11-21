import 'package:aladdin_project/home_page_all/coffee_page/pages/main_page.dart';
import 'package:aladdin_project/home_page_all/space_store_page/pages/main_page.dart';
import 'package:aladdin_project/home_page_all/used_online_page/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../home_page_all/bookplay_url_page/url.dart';
import '../../../home_page_all/bookplay_url_page/url_page.dart';
import '../../../home_page_all/domestic_book_page/pages/main_page.dart';
import '../../../home_page_all/foreign_book_page/pages/main_page.dart';
import '../../../home_page_all/home_page/pages/main_page.dart';
import '../../../home_page_all/recommend_page/main_page.dart';

class AllMainPage extends StatefulWidget {
  const AllMainPage({Key? key}) : super(key: key);

  @override
  State<AllMainPage> createState() => _AllMainPageState();
}

class _AllMainPageState extends State<AllMainPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildTabBar(),
          Expanded(child: _buildTabBarView()),
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
                }),
          ],
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      indicatorColor: Colors.blueAccent,
      indicatorWeight: 3,
      tabs: [
        Tab(
            child: Text("HOME",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("추천마법사",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("국내서",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("외서",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("중고온라인",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("우주점",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text("커피",
                style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(
            child: Text(" ＂북플",
                style: TextStyle(color: Colors.black, fontSize: 14))),
      ],
    );
  }

  Widget _buildTabBarView() {
    return Container(
      color: Colors.black,
      child: TabBarView(
        controller: _tabController,
        children: [
          HomePageMain(),
          RecommandPage(),
          DomesticBookPage(),
          ForeignBookPage(),
          UsedOnlinePage(),
          SpaceStrorePage(),
          CoffeeMainPage(),
          UrlPage(url: bookplay),
        ],
      ),
    );
  }
}

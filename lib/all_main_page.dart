import 'package:aladdin_project/recommend_page/main_page.dart';
import 'package:flutter/material.dart';
import 'home_page/pages/main_page.dart';

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
    _tabController = TabController(length: 13, vsync: this);
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
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
              onPressed: () {
                // 아이콘 버튼 실행
                Navigator.pushNamed(context, "/shoppincart");
              },
              iconSize: 25,
            ),
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
        Tab(child: Text(
            "HOME", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "추천마법사", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "국내서", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "외서", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "알라딘굿즈", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "중고온라인", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "우주점", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "중고매장", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "커피", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "음반", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "블루레이", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "북플", style: TextStyle(color: Colors.black, fontSize: 14))),
        Tab(child: Text(
            "알라디너TV", style: TextStyle(color: Colors.black, fontSize: 14))),
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
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
          HomePageMain(),
        ],
      ),
    );
  }
}


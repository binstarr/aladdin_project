
import 'package:aladdin_project/shoppingcart_page/page/shopping_basket_page.dart';
import 'package:aladdin_project/shoppingcart_page/page/today_product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_page/pages/login_page.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage>
    with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
              Widget build(BuildContext context) {
    return Scaffold(
    appBar: _buildAppBar(context),

    body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
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
      controller: _tabController,
      indicatorColor: Colors.blueAccent,
      indicatorWeight: 3,
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(child: Text(
            " 장바구니", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        Tab(child: Text(
            "보관함", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold))),
        Tab(child: Text(
            "구매함", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold))),
        Tab(child: Text(
            "오늘 본 상품", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildTabBarView() {
    return Container(
      color: Colors.black,
      child: TabBarView(
        controller: _tabController,
        children: [
          ShoppingBasketPage(),
          LoginPage(),
          LoginPage(),
          TodayProduct(),
        ],
      ),
    );
  }
}


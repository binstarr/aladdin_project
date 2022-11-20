<<<<<<< HEAD
import 'package:aladdin_project/recommend_page/components/recoomend_footer.dart';
import 'package:aladdin_project/recommend_page/main_page.dart';
=======
>>>>>>> b8fe63bea376a8efa9de2f855b881a6075d3d162
import 'package:aladdin_project/shoppincart_page/page/locker_page.dart';
import 'package:aladdin_project/shoppincart_page/page/purchased_page.dart';
import 'package:aladdin_project/shoppincart_page/page/shopping_basket_page.dart';
import 'package:aladdin_project/shoppincart_page/page/today_product_page.dart';
import 'package:flutter/material.dart';

class ShoppinCartPage extends StatefulWidget {
  const ShoppinCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppinCartPage> createState() => _ShoppinCartPageState();
}

class _ShoppinCartPageState extends State<ShoppinCartPage>
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
      controller: _tabController,
      indicatorColor: Colors.blueAccent,
      indicatorWeight: 3,
      tabs: [
        Tab(child: Text(
            " 장바구니", style: TextStyle(color: Colors.black, fontSize: 12))),
        Tab(child: Text(
            "보관함", style: TextStyle(color: Colors.black, fontSize: 12))),
        Tab(child: Text(
            "구매함", style: TextStyle(color: Colors.black, fontSize: 12))),
        Tab(child: Text(
            "오늘 본 상품", style: TextStyle(color: Colors.black, fontSize: 12))),
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
          LockerPage(),
          PurchasedPage(),
          TodayProduct(),
        ],
      ),
    );
  }
}


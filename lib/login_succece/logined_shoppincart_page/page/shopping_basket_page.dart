import 'package:aladdin_project/home_page_all/recommend_page/components/recoomend_footer.dart';
import 'package:flutter/material.dart';

class LoginedShoppingBasketPage extends StatefulWidget {
  const LoginedShoppingBasketPage({Key? key}) : super(key: key);

  @override
  State<LoginedShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<LoginedShoppingBasketPage> {
  bool isDelete = true;
  bool isSave = false;
  bool isOrder = false;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isDelete, isSave, isOrder];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ToggleButtons(
                    selectedColor: Colors.white,
                    fillColor: Colors.blue,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('삭제', style: TextStyle(fontSize: 15))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('보관', style: TextStyle(fontSize: 15))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('주문', style: TextStyle(fontSize: 15))),
                    ],
                    isSelected: isSelected,
                    onPressed: toggleSelect,
                  ),
                ],
              ),
              Column(
                children: [
                  _lineBar(), // 구분선
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "장바구니에 담긴 상품이 없습니다.",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                  ),
                  _buildShoppingCartImage(), // 쇼핑카트 이미지
                  SizedBox(height: 20),
                  _guide(),
                  _lineBar(),
                  SizedBox(height: 50),
                  Footer(),

                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  void toggleSelect(value) {
    if (value == 0) {
      isDelete = true;
      Colors.blue;
      isSave = false;
      isOrder = false;
    } else if (value == 1) {
      isDelete = false;
      isSave = true;
      isOrder = false;
    } else {
      isDelete = false;
      isSave = false;
      isOrder = true;
    }
    setState(() {
      isSelected = [isDelete, isSave, isOrder];
    });
  }

  _buildShoppingCartImage() {
    return Icon(
      Icons.remove_shopping_cart_sharp,
      size: 100,
      color: Colors.blue,
    );
  }

  Widget buildLoginButton() {
    return Container(
      width: 200,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text("로그인하기", style: TextStyle(
          color: Colors.black54,
        ),),
      ),
    );
  }

  _guide() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("무이자 할부 안내", style: TextStyle(
                color: Colors.black54,
              ),)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("|", style: TextStyle(
                  color: Colors.black54,
                ),),
              ),
              TextButton(onPressed: () {}, child: Text("장바구니 이용안내", style: TextStyle(
                color: Colors.black54,
              ),)),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  _lineBar() {
    return Container(
      width: double.infinity,
      height: 20,
      color: Color.fromRGBO(219, 218, 222, 1),
    );
  }
}

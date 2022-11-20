import 'package:aladdin_project/recommend_page/components/recoomend_footer.dart';
import 'package:flutter/material.dart';

class ShoppingBasketPage extends StatefulWidget {
  const ShoppingBasketPage({Key? key}) : super(key: key);

  @override
  State<ShoppingBasketPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<ShoppingBasketPage> {
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
                    fillColor: Colors.pink,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('삭제', style: TextStyle(fontSize: 15))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('보관', style: TextStyle(fontSize: 18))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text('주문', style: TextStyle(fontSize: 18)),
                          )),
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
                    child: Text("로그인하시면 장바구니에 저장된 상품을 볼 수 있습니다."),
                  ),
                  _buildShoppingCartImage(), // 쇼핑카트 이미지
                  buildLoginButton(), // 로그인 버튼
                  _guide(),
                  _lineBar(),
                  SizedBox(height: 50,),
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
      Colors.pink;
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
      color: Colors.pink,
    );
  }

  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("로그인하기"),
      style: ElevatedButton.styleFrom(minimumSize: Size(150, 40)),
    );
  }

  _guide() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text("무이자 할부 안내")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text("|"),
          ),
          TextButton(onPressed: () {}, child: Text("장바구니 이용안내")),
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

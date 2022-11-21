import 'package:aladdin_project/home_page_all/recommend_page/components/recoomend_footer.dart';
import 'package:flutter/material.dart';

class LoginedPurchasedPage extends StatefulWidget {
  const LoginedPurchasedPage({Key? key}) : super(key: key);

  @override
  State<LoginedPurchasedPage> createState() => _ShoppingBasketPageState();
}

class _ShoppingBasketPageState extends State<LoginedPurchasedPage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "삭제",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "리스트 보내기",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                        color: Colors.blue,
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "장바구니 담기",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  _lineBar(), // 구분선
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          "구매하신 상품이 없습니다.",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "제품을 구매하시면 구매 목록 관리를 하실 수 있습니다.",
                          style:
                          TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ],
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


  _buildShoppingCartImage() {
    return Icon(
      Icons.shopping_bag,
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
        child: Text(
          "로그인하기",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
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
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "무이자 할부 안내",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "|",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "장바구니 이용안내",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  )),
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

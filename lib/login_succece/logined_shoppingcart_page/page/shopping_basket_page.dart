
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
                  _buildLineBar(), // 구분선
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
                  SizedBox(height: 30),
                  _buildGuide(),
                  _buildLineBar(),
                  _buildItemTitle("굿즈"),
                  _buildItemList(),
                  _buildLineBar(),
                  _buildItemTitle("커피"),
                  _buildCoffeeList(),

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
        onPressed: () {
          Navigator.pushNamed(context, "/login");
        },
        child: Text(
          "로그인하기",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  _buildGuide() {
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

  _buildLineBar() {
    return Container(
      width: double.infinity,
      height: 20,
      color: Color.fromRGBO(219, 218, 222, 1),
    );
  }

  //
  _buildItemTitle(String itemTitleName) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 10, right: 5, bottom: 10),
      child: Container(
        child: Row(
          children: [
            Text(
              "알라딘 ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22),
            ),
            Text(
              "$itemTitleName",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontSize: 22,
              ),
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  "더보기 > ",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildItemImg(String itemsImgUrl, String itemName) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Image(
              image: AssetImage("assets/${itemsImgUrl}.jpg"),
              width: 150,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 150,
            child: Text(
              itemName,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildItemList() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem1", "본투리드 베이직 노트")),
            InkWell(
                onTap: () {}, child: _buildItemImg("goodsItem2", "본투리드 디자인연필")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem3", "본투리드 볼펜(유성)")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem4", "본투리드 투명 북마크")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem5", "문장 부호 스티키 마커")),
            InkWell(
                onTap: () {}, child: _buildItemImg("goodsItem6", "본투리드 엘홀더")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem7", "스티키 북마크(120매)")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem8", "본투리드 실리콘 조리...")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem9", "본투리드 초저점도 3")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem10", "본투리드 젓가락_우드")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("goodsItem11", "피너츠 카세트 테이프")),
            InkWell(
                onTap: () {}, child: _buildItemImg("goodsItem12", "본투리드 지우개")),
            _buildAddIcon(),
          ],
        ),
      ),
    );
  }

  // 더보기 버튼
  _buildAddIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 80, bottom: 70),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 50),
              child: Container(
                  child: Icon(
                    Icons.add_circle_outline,
                    size: 100,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 35,
              ),
              child: Text(
                "더보기",
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCoffeeList() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee1", "콜롬비아 엑셀소 디카...")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee2", "트립백 콜롬비아 엑셀...")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee3", "드립백 브라질 산타 루...")),
            InkWell(
                onTap: () {}, child: _buildItemImg("coffee4", "에티오피아 예가체프...")),
            InkWell(
                onTap: () {}, child: _buildItemImg("coffee5", "에티오피아 예가체프...")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee6", "콜드브루 파우치 알라...")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee7", "콜드브루 파우치 알라...")),
            InkWell(
                onTap: () {}, child: _buildItemImg("coffee8", "브라질 산타 루시아 #5")),
            InkWell(
                onTap: () {},
                child: _buildItemImg("coffee9", "콜드브루 온두라스 엘...")),
            _buildAddIcon(),
          ],
        ),
      ),
    );
  }
}

import 'package:aladdin_project/login_page/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../home_page_all/recommend_page/components/recoomend_footer.dart';

class MyProfile extends StatelessWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              _profileImage(),
              SizedBox(height: 10),
              _aboutProfile(),
              SizedBox(height: 10),
              _logoutBtn(context),
              SizedBox(height: 20),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _mileage("10,000", "마일리지"),
              _mileage("10,000", "적립금"),
              _mileage("0", "상품권"),
              _mileage("0", "할인쿠폰"),
              _mileage("0", "예치금"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _mileage("0", "캐시"),
              _mileage("0", "전자책"),
              _mileage("300,000", "환전"),
              _mileage("0", "커피"),
              _mileage("50", "스탬프"),
            ],
          ),
          SizedBox(height: 20),
          _buildCoupon(),
          SizedBox(height: 20),
          _orderCheck("주문 조회"),
          _orderCheck("반품/교환 조회"),
          _orderCheck("중고팔기 내역"),
          _orderCheck("적립금/마일리지/예치금 내역"),
          _orderCheck("eBook 구매 목록"),
          _orderCheck("개인정보수정"),
          Footer(),
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

  Widget _profileImage(){
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/profile.png"),
      ),
    );
  }

  Widget _aboutProfile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${LoginPage.idController.text} 님, 안녕하세요! \n 고객님은 일반 회원입니다.",
          style: TextStyle(color: Colors.black, fontSize: 20),),
      ],
    );
  }

  Widget _logoutBtn(BuildContext context){
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: (){
          print("로그아웃로그아웃로그아웃");
          Navigator.pop(context);
        },
        child: Text(
          "로그아웃",
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15
          ),
        ),
      ),
    );
  }
  Widget _mileage(var count, var title){
    return Container(
      width: 75,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildCoupon(){
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black87,
      child: Row(
        children: [
          SizedBox(width: 20),
          SizedBox(
              width: 100,
              child: Image.asset("assets/coupon.png")),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("이 달의 적립금 혜택", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),),
              Text("2천원 적립금 받고 구매하기",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(239, 168, 60, 1.0),
                ),),
            ],
          ),
        ],
      ),
    );
  }
  Widget _orderCheck(var text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
      ),
      child: TextButton(
        onPressed: (){},
        child: Row(
          children: [
            Text(text),
            Spacer(),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }


}

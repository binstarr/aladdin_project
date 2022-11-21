import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildServiceBar(),
      _buildCompanyInfo(),
      _buildQuestionButton(),
      _buildCompanyPosition(),
    ]);
  }

  Widget _buildServiceBar() {
    return Container(
      color: Color.fromRGBO(232, 232, 232, 1.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "전체 메뉴",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "회사 소개",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "출판사 안내",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "PC 버전",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompanyInfo() {
    return Container(
        color: Color.fromRGBO(232, 232, 232, 1.0),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "(주)알라딘커뮤니케이션",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_up_sharp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "대표이사:최우경",
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "고객정보보호 책임자:최우경",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "사업자등록:201-81-23094",
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "통신판매업신고:즁규01520호",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "호스팅 제공자:알라딘커뮤니케이션",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "본사:서울시 중구 서소문로 89-31",
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "중고매장위치:자세히보기",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ⓒ Aladin Communication. All Rights Reserved.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black12,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("일반문의 (발신자 부담)"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1544-2514",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        )
      ],
    ));
  }

  Widget _buildQuestionButton() {
    return Container(
      color: Color.fromRGBO(232, 232, 232, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(170, 40),
              ),
              onPressed: () {},
              child: Text(
                "1:1문의",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              )),
          SizedBox(
            width: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size(170, 40),
            ),
            onPressed: () {},
            child: Text(
              "FAQ",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyPosition() {
    return Container(
      color: Color.fromRGBO(232, 232, 232, 1.0),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white, minimumSize: Size(350, 40)),
              onPressed: () {},
              child: Text(
                "중고매장 위치, 영업시간 안내",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

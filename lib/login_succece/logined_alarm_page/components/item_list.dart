import 'package:flutter/material.dart';

import '../../../login_page/pages/login_page.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAlarmMassage(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "[로그인이 완료되었습니다] ",
              style: TextStyle(fontSize: 13, color: Colors.blue,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "[무료택배] 로그인 이용자 전국 무료택배 서비스 / (택배사 : 대한통운)",
              style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/post");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: Text(
                      "[이벤트] 신일숙 명작 만화. 신과 인간이 벌이는, 매혹과 잔혹의 이중주 <불꽃의 메디아> 독자 북펀드",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "7시간전 X",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/post");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: Text(
                      "[이벤트] 2022신간 알리미 베스트 20 저자, 시리즈, 알림 신청 시 적립금 1천원 (추첨)",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "18시간전 X",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/post");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                "[서비스 당일배송]&양탄자배송 일시중단(11.19.토.                          2일전 X \n 물류 재고조사)",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildAlarmMassage() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Text(
              LoginPage().loginId.text,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              '님께 3건의 알림이 도착했습니다.',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(  color: Color.fromRGBO(219, 218, 222, 0.5),
                 borderRadius:  BorderRadius.circular(10),),
                  child: TextButton(onPressed: () {}, 
                      child: Text("전체삭제",style: TextStyle(color: Colors.black,fontSize:10)))),
            )
          ],
        ),
      ),
    );
  }
}

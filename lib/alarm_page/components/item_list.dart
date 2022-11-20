import 'package:flutter/material.dart';

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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/post");
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "[서비스 당일배송]&양탄자배송 일시중단(11.19.토.                          2일전 X \n 물류 재고조사)",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          )
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
              '고객',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              '님께 1건의 알림이 도착했습니다.',
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
                  borderRadius:  BorderRadius.circular(10),
                ),
                  child: TextButton(onPressed: () {}, child: Text("전체삭제",style: TextStyle(color: Colors.black,fontSize:10)))),
            )
          ],
        ),
      ),
    );
  }
}

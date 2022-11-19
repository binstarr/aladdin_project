import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 450,
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/post");
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "[서비스 당일배송]&양탄자배송 일시중단(11.19.토.   2일전 X \n 물류 재고조사)",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }


}

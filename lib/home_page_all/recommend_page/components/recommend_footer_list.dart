import 'package:flutter/material.dart';

class RecommendFooterList extends StatelessWidget {
  const RecommendFooterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildList("분당야탑점 임시 운영중단(2022.11.18~)"),
        _buildList("당일배송 & 양탄자배송 일시중단 (11.19.토.물류 재고조사)"),
        _buildList("11월 신용카드 무이자 안내"),
      ],
    );
  }

  Widget _buildList(var text) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(BorderSide(color: Colors.black12)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

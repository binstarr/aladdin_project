import 'package:flutter/material.dart';

class SpaceStoreBody extends StatelessWidget {
  const SpaceStoreBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        metropolitanArea(),
        SizedBox(height: 20),
        metropolitanCity(),
        spaceText(),
      ],
    );
  }

  Widget _buildTitle(var title) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildButton(var buttonName) {
    return Container(
      width: 110,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: Colors.black38),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget metropolitanArea() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle("서울/경기/인천"),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("가로수길점"),
              _buildButton("강남점"),
              _buildButton("강서점"),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("건대점"),
              _buildButton("노원역점"),
              _buildButton("대학로점"),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("동탄점"),
              _buildButton("동탄2점"),
              _buildButton("부천점점"),
            ],
          ),
        ],
      ),
    );
  }

  Widget metropolitanCity() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle("광역시 등"),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("광주상무점"),
              _buildButton("광주충장로점"),
              _buildButton("김해점"),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("대구동성로점"),
              _buildButton("대구상인점"),
              _buildButton("대구시청역점"),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton("부산센텀점"),
              _buildButton("부산덕천점"),
              _buildButton("부산서면점"),
            ],
          ),
        ],
      ),
    );
  }

  Widget spaceText() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            "중고매장 이 광활한 우주점 판매 상품은 매장 전체 상품이 아니며, "
            "온/오프라인 전체 중고 빅데이터 분석을 통해 온라인에서 많이 판매되는 상품으로 결정됩니다",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Text(
                "해당 상품은 알라딘 중고매장에서 직접 배송하며, 배송 소요시간은 해당 중고상품 페이지에서 확인 가능합니다."
                "매장 배송 상품은 동일 매장 2만원 이상 구매 시 무료로 배송됩니다.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Text(
                "매장 배송 상품은 동일 매장 2만원 이상 구매 시 무료로 배송됩니다.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
